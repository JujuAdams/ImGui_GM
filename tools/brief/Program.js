const fs = require("node:fs");
const FileEditor = require("./FileEditor");
const Scanner = require("./Scanner");
const Processor = require("./Processor");
const TokenReader = require("./TokenReader");
const Logger = require("./Logger");
const Configuration = require("./Configuration");
const Wrapper = require("./Wrapper");
const Token = require("./Token");

/**
 * Written by Nommiin - https://github.com/Nommiin
 */ 
class Program {
    /**
     * Entry point for tool, see Configuration.js for options
     * @param {string} wrapper Path to wrapper .cpp file
     * @param {string} extension Path to extension .yy file
     * @param {string} script Path to ImGui .gml script
     */
    static main(wrapper, extension, script) {
        const func = this.parseWrapper(new FileEditor(wrapper));
    }

    /**
     * Reads imgui_gm.cpp script and parses out exported functions for GameMaker
     * @param {FileEditor} file The file editor containing the wrapper
     */
    static parseWrapper(file) {
        const tokens = new Processor(new Scanner(file.Content).Tokens).get(), wrappers = [];
        if (tokens.length === 0) throw `Could not parse "${file.Name}", processed token list is empty`;

        const reader = new TokenReader(tokens), keyword = Configuration.WRAPPER_DEF;
        while (!reader.end()) {
            const token = reader.advance();
            if (token && (token.Type === "FunctionDef" && token.Literal === keyword)) {
                const name = token.Children[0];
                if (!name || name.Type !== "Identifier") throw `Could not parse "${file.Name}", expected Identifier token for ${token.Literal} at line ${token.Line}`;
                
                const next = reader.advance();
                if (!next || next.Type !== Token.name("{}")) throw `Could not parse "${file.Name}", expected ${Token.name("{}")} token for ${token.Literal} at line ${token.Line}`;
                if (!next.Children || next.Children.length === 0) throw `Could not parse "${file.Name}", expected content inside ${Token.name("{}")} for ${token.Literal} at line ${token.Line}`;
                
                const wrapper = new Wrapper(name.Literal, token.Line), children = new TokenReader(next.Children);
                while (!children.end()) {
                    const token = children.advance();
                    const left = children.previous();
                    switch (token.Type) {
                        case Token.name("="): {
                            const offset = children.peek()?.Type === "Cast" ? 1 : 0;
                            const right = children.peek(offset);
                            switch (left.Type) {
                                case "Identifier": {
                                    if (left.Literal === "kind" && children.match("Result.kind", -4)) {
                                        wrapper.returns(right.Literal);
                                        children.advance();
                                        continue;
                                    }
    
                                    switch (right.Type) {
                                        case "FunctionCall": {
                                            if (right.Literal.startsWith("YYGet")) {
                                                const inner = right.Children.filter(e => e.Type !== Token.name(","));
                                                if (inner.length < 2) throw `Could not parse "${file.Name}", expected at least 2 arguments for call to ${right.Literal} at line ${right.Line}`;
    
                                                const ident = inner[0];
                                                if (ident.Type !== "Identifier" || ident.Literal !== "arg") throw `Could not parse "${file.Name}", expected "arg" variable but got ${ident.Literal} as first argument for call to ${right.Literal} at line ${right.Line}`;
                                                const ind = inner[1];
                                                if (ind.Type !== "Number") throw `Could not parse "${file.Name}", expected Number but got ${ind.Type} as second argument for call to ${right.Literal} at line ${right.Line}`;
                                                wrapper.argument(left.Literal, ind.Literal, right.Literal);
                                                children.advance();
                                            }
                                            break;
                                        }
    
                                        case "Identifier": {
                                            if (right.Literal === "arg") {
                                                const more = children.peek(offset + 1);
                                                if (more.Type === Token.name("[]")) {
                                                    const inner = more.Children[0];
                                                    if (inner.Type !== "Number") throw `Could not parse "${file.Name}", expected Number but got ${inner.Type} as index for argument array at line ${right.Line}`;
                                                    if (left.Literal === "Result") wrapper.return_arg(inner.Literal);
                                                    children.advance();
                                                }
                                            }
                                            break;
                                        }
                                    }
                                    break;
                                }
                            }
                            break;
                        }

                        case Token.name("::"): {
                            if (left.Type === "Identifier" && left.Literal === "ImGui") {
                                const right = children.peek();
                                if (right.Type !== "FunctionCall") throw `Could not parse "${file.Name}", expected FunctionCall but got ${right.Type} after scope resolution token at line ${token.Line}`;
                                wrapper.calls(right.Literal);
                                children.advance();
                            }
                            break;
                        }

                        case "FunctionCall": {
                            if (token.Literal.startsWith("GM")) {
                                wrapper.modifier(token);
                            }
                        }
                    }
                }
                wrappers.push(wrapper);
            }
        }
        Logger.info(`Successfully parsed "${file.Name}" and retrieved ${wrappers.length} wrapper definitions`);
        return wrappers;
    }
}

module.exports = Program;
if (!global["__program_main"]) if (!global["__program_warn"]) {global["__program_warn"]=1;console.error("Please execute the program by running main.js");}