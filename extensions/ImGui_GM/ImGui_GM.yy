{
    "resourceType": "GMExtension",
    "resourceVersion": "1.2",
    "name": "ImGui_GM",
    "optionsFile": "options.json",
    "options": [],
    "exportToGame": true,
    "supportedTargets": -1,
    "extensionVersion": "0.0.1",
    "packageId": "",
    "productId": "",
    "author": "",
    "date": "2022-12-12T16:19:17.4733988-06:00",
    "license": "",
    "description": "",
    "helpfile": "",
    "iosProps": false,
    "tvosProps": false,
    "androidProps": false,
    "installdir": "",
    "files": [
        {
            "resourceType": "GMExtensionFile",
            "resourceVersion": "1.0",
            "name": "",
            "filename": "imgui_gm.dll",
            "uncompress": false,
            "copyToTargets": -1,
            "origname": "",
            "init": "",
            "final": "",
            "kind": 1,
            "functions": [
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "__imgui_initialize",
                    "externalName": "__imgui_initialize",
                    "kind": 1,
                    "help": "",
                    "hidden": false,
                    "returnType": 1,
                    "argCount": 0,
                    "args": [],
                    "documentation": "/// @function __imgui_initialize(info)\r\n/// @argument {ds_map} info - Operating system info"
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "__imgui_update",
                    "externalName": "__imgui_update",
                    "kind": 1,
                    "help": "",
                    "hidden": false,
                    "returnType": 1,
                    "argCount": 0,
                    "args": [],
                    "documentation": ""
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "__imgui_render",
                    "externalName": "__imgui_render",
                    "kind": 1,
                    "help": "",
                    "hidden": false,
                    "returnType": 1,
                    "argCount": 0,
                    "args": [],
                    "documentation": ""
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "__imgui_mouse",
                    "externalName": "__imgui_mouse",
                    "kind": 1,
                    "help": "",
                    "hidden": false,
                    "returnType": 1,
                    "argCount": 0,
                    "args": [],
                    "documentation": ""
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "__imgui_key",
                    "externalName": "__imgui_key",
                    "kind": 1,
                    "help": "",
                    "hidden": false,
                    "returnType": 1,
                    "argCount": 0,
                    "args": [],
                    "documentation": ""
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "__imgui_mouse_wheel",
                    "externalName": "__imgui_mouse_wheel",
                    "kind": 1,
                    "help": "",
                    "hidden": false,
                    "returnType": 1,
                    "argCount": 0,
                    "args": [],
                    "documentation": ""
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "__imgui_mouse_cursor",
                    "externalName": "__imgui_mouse_cursor",
                    "kind": 1,
                    "help": "",
                    "hidden": false,
                    "returnType": 1,
                    "argCount": 0,
                    "args": [],
                    "documentation": ""
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "__imgui_input",
                    "externalName": "__imgui_input",
                    "kind": 1,
                    "help": "",
                    "hidden": false,
                    "returnType": 1,
                    "argCount": 0,
                    "args": [],
                    "documentation": ""
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "__imgui_begin",
                    "externalName": "__imgui_begin",
                    "help": "",
                    "documentation": "",
                    "kind": 1,
                    "hidden": true,
                    "returnType": 1,
                    "argCount": 0,
                    "args": []
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "__imgui_end",
                    "externalName": "__imgui_end",
                    "help": "",
                    "documentation": "",
                    "kind": 1,
                    "hidden": true,
                    "returnType": 1,
                    "argCount": 0,
                    "args": []
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "__imgui_text",
                    "externalName": "__imgui_text",
                    "help": "",
                    "documentation": "",
                    "kind": 1,
                    "hidden": true,
                    "returnType": 1,
                    "argCount": 0,
                    "args": []
                }
            ],
            "constants": [],
            "ProxyFiles": [],
            "usesRunnerInterface": true,
            "order": [
                {
                    "name": "__imgui_update",
                    "path": "extensions/ImGui_GM/ImGui_GM.yy"
                },
                {
                    "name": "__imgui_render",
                    "path": "extensions/ImGui_GM/ImGui_GM.yy"
                },
                {
                    "name": "__imgui_mouse",
                    "path": "extensions/ImGui_GM/ImGui_GM.yy"
                },
                {
                    "name": "__imgui_key",
                    "path": "extensions/ImGui_GM/ImGui_GM.yy"
                },
                {
                    "name": "__imgui_input",
                    "path": "extensions/ImGui_GM/ImGui_GM.yy"
                },
                {
                    "name": "__imgui_mouse_wheel",
                    "path": "extensions/ImGui_GM/ImGui_GM.yy"
                },
                {
                    "name": "__imgui_mouse_cursor",
                    "path": "extensions/ImGui_GM/ImGui_GM.yy"
                },
                {
                    "name": "__imgui_begin",
                    "path": "extensions/ImGui_GM/ImGui_GM.yy"
                },
                {
                    "name": "__imgui_end",
                    "path": "extensions/ImGui_GM/ImGui_GM.yy"
                },
                {
                    "name": "__imgui_initialize",
                    "path": "extensions/ImGui_GM/ImGui_GM.yy"
                }
            ]
        }
    ],
    "classname": "",
    "tvosclassname": null,
    "tvosdelegatename": null,
    "iosdelegatename": "",
    "androidclassname": "",
    "sourcedir": "",
    "androidsourcedir": "",
    "macsourcedir": "",
    "maccompilerflags": "",
    "tvosmaccompilerflags": "",
    "maclinkerflags": "",
    "tvosmaclinkerflags": "",
    "iosplistinject": "",
    "tvosplistinject": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidactivityinject": "",
    "gradleinject": "",
    "androidcodeinjection": "",
    "hasConvertedCodeInjection": true,
    "ioscodeinjection": "",
    "tvoscodeinjection": "",
    "iosSystemFrameworkEntries": [],
    "tvosSystemFrameworkEntries": [],
    "iosThirdPartyFrameworkEntries": [],
    "tvosThirdPartyFrameworkEntries": [],
    "IncludedResources": [],
    "androidPermissions": [],
    "copyToTargets": 64,
    "iosCocoaPods": "",
    "tvosCocoaPods": "",
    "iosCocoaPodDependencies": "",
    "tvosCocoaPodDependencies": "",
    "parent": {
        "name": "ImGui_GM",
        "path": "folders/ImGui_GM.yy"
    }
}