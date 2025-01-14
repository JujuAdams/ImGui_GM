enum ImGuiMouseSource {
	Mouse = 0,
	TouchScreen,
	Pen,
}

enum ImGuiWindowFlags {
	None = 0,
	NoTitleBar = 1 << 0,
	NoResize = 1 << 1,
	NoMove = 1 << 2,
	NoScrollbar = 1 << 3,
	NoScrollWithMouse = 1 << 4,
	NoCollapse = 1 << 5,
	AlwaysAutoResize = 1 << 6,
	NoBackground = 1 << 7,
	NoSavedSettings = 1 << 8,
	NoMouseInputs = 1 << 9,
	MenuBar = 1 << 10,
	HorizontalScrollbar = 1 << 11,
	NoFocusOnAppearing = 1 << 12,
	NoBringToFrontOnFocus = 1 << 13,
	AlwaysVerticalScrollbar = 1 << 14,
	AlwaysHorizontalScrollbar = 1 << 15,
	NoNavInputs = 1 << 16,
	NoNavFocus = 1 << 17,
	UnsavedDocument = 1 << 18,
	NoDocking = 1 << 19,
	NoNav = ImGuiWindowFlags.NoNavInputs | ImGuiWindowFlags.NoNavFocus,
	NoDecoration = ImGuiWindowFlags.NoTitleBar | ImGuiWindowFlags.NoResize | ImGuiWindowFlags.NoScrollbar | ImGuiWindowFlags.NoCollapse,
	NoInputs = ImGuiWindowFlags.NoMouseInputs | ImGuiWindowFlags.NoNavInputs | ImGuiWindowFlags.NoNavFocus,
	NavFlattened = 1 << 23,
	ChildWindow = 1 << 24,
	Tooltip = 1 << 25,
	Popup = 1 << 26,
	Modal = 1 << 27,
	ChildMenu = 1 << 28,
	DockNodeHost = 1 << 29,
	AlwaysUseWindowPadding = 1 << 30,
}

enum ImGuiChildFlags {
	None = 0,
	Border = 1 << 0,
	AlwaysUseWindowPadding = 1 << 1,
	ResizeX = 1 << 2,
	ResizeY = 1 << 3,
	AutoResizeX = 1 << 4,
	AutoResizeY = 1 << 5,
	AlwaysAutoResize = 1 << 6,
	FrameStyle = 1 << 7,
}

enum ImGuiInputTextFlags {
	None = 0,
	CharsDecimal = 1 << 0,
	CharsHexadecimal = 1 << 1,
	CharsUppercase = 1 << 2,
	CharsNoBlank = 1 << 3,
	AutoSelectAll = 1 << 4,
	EnterReturnsTrue = 1 << 5,
	CallbackCompletion = 1 << 6,
	CallbackHistory = 1 << 7,
	CallbackAlways = 1 << 8,
	CallbackCharFilter = 1 << 9,
	AllowTabInput = 1 << 10,
	CtrlEnterForNewLine = 1 << 11,
	NoHorizontalScroll = 1 << 12,
	AlwaysOverwrite = 1 << 13,
	ReadOnly = 1 << 14,
	Password = 1 << 15,
	NoUndoRedo = 1 << 16,
	CharsScientific = 1 << 17,
	CallbackResize = 1 << 18,
	CallbackEdit = 1 << 19,
	EscapeClearsAll = 1 << 20,
}

enum ImGuiTreeNodeFlags {
	None = 0,
	Selected = 1 << 0,
	Framed = 1 << 1,
	AllowOverlap = 1 << 2,
	NoTreePushOnOpen = 1 << 3,
	NoAutoOpenOnLog = 1 << 4,
	DefaultOpen = 1 << 5,
	OpenOnDoubleClick = 1 << 6,
	OpenOnArrow = 1 << 7,
	Leaf = 1 << 8,
	Bullet = 1 << 9,
	FramePadding = 1 << 10,
	SpanAvailWidth = 1 << 11,
	SpanFullWidth = 1 << 12,
	SpanAllColumns = 1 << 13,
	NavLeftJumpsBackHere = 1 << 14,
	CollapsingHeader = ImGuiTreeNodeFlags.Framed | ImGuiTreeNodeFlags.NoTreePushOnOpen | ImGuiTreeNodeFlags.NoAutoOpenOnLog,
	AllowItemOverlap = ImGuiTreeNodeFlags.AllowOverlap,
}

enum ImGuiPopupFlags {
	None = 0,
	MouseButtonLeft = 0,
	MouseButtonRight = 1,
	MouseButtonMiddle = 2,
	MouseButtonMask_ = 0x1F,
	MouseButtonDefault_ = 1,
	NoReopen = 1 << 5,
	NoOpenOverExistingPopup = 1 << 7,
	NoOpenOverItems = 1 << 8,
	AnyPopupId = 1 << 10,
	AnyPopupLevel = 1 << 11,
	AnyPopup = ImGuiPopupFlags.AnyPopupId | ImGuiPopupFlags.AnyPopupLevel,
}

enum ImGuiSelectableFlags {
	None = 0,
	DontClosePopups = 1 << 0,
	SpanAllColumns = 1 << 1,
	AllowDoubleClick = 1 << 2,
	Disabled = 1 << 3,
	AllowOverlap = 1 << 4,
	AllowItemOverlap = ImGuiSelectableFlags.AllowOverlap,
}

enum ImGuiComboFlags {
	None = 0,
	PopupAlignLeft = 1 << 0,
	HeightSmall = 1 << 1,
	HeightRegular = 1 << 2,
	HeightLarge = 1 << 3,
	HeightLargest = 1 << 4,
	NoArrowButton = 1 << 5,
	NoPreview = 1 << 6,
	WidthFitPreview = 1 << 7,
	HeightMask_ = ImGuiComboFlags.HeightSmall | ImGuiComboFlags.HeightRegular | ImGuiComboFlags.HeightLarge | ImGuiComboFlags.HeightLargest,
}

enum ImGuiTabBarFlags {
	None = 0,
	Reorderable = 1 << 0,
	AutoSelectNewTabs = 1 << 1,
	TabListPopupButton = 1 << 2,
	NoCloseWithMiddleMouseButton = 1 << 3,
	NoTabListScrollingButtons = 1 << 4,
	NoTooltip = 1 << 5,
	FittingPolicyResizeDown = 1 << 6,
	FittingPolicyScroll = 1 << 7,
	FittingPolicyMask_ = ImGuiTabBarFlags.FittingPolicyResizeDown | ImGuiTabBarFlags.FittingPolicyScroll,
	FittingPolicyDefault_ = ImGuiTabBarFlags.FittingPolicyResizeDown,
}

enum ImGuiTabItemFlags {
	None = 0,
	UnsavedDocument = 1 << 0,
	SetSelected = 1 << 1,
	NoCloseWithMiddleMouseButton = 1 << 2,
	NoPushId = 1 << 3,
	NoTooltip = 1 << 4,
	NoReorder = 1 << 5,
	Leading = 1 << 6,
	Trailing = 1 << 7,
	NoAssumedClosure = 1 << 8,
}

enum ImGuiFocusedFlags {
	None = 0,
	ChildWindows = 1 << 0,
	RootWindow = 1 << 1,
	AnyWindow = 1 << 2,
	NoPopupHierarchy = 1 << 3,
	DockHierarchy = 1 << 4,
	RootAndChildWindows = ImGuiFocusedFlags.RootWindow | ImGuiFocusedFlags.ChildWindows,
}

enum ImGuiHoveredFlags {
	None = 0,
	ChildWindows = 1 << 0,
	RootWindow = 1 << 1,
	AnyWindow = 1 << 2,
	NoPopupHierarchy = 1 << 3,
	DockHierarchy = 1 << 4,
	AllowWhenBlockedByPopup = 1 << 5,
	AllowWhenBlockedByActiveItem = 1 << 7,
	AllowWhenOverlappedByItem = 1 << 8,
	AllowWhenOverlappedByWindow = 1 << 9,
	AllowWhenDisabled = 1 << 10,
	NoNavOverride = 1 << 11,
	AllowWhenOverlapped = ImGuiHoveredFlags.AllowWhenOverlappedByItem | ImGuiHoveredFlags.AllowWhenOverlappedByWindow,
	RectOnly = ImGuiHoveredFlags.AllowWhenBlockedByPopup | ImGuiHoveredFlags.AllowWhenBlockedByActiveItem | ImGuiHoveredFlags.AllowWhenOverlapped,
	RootAndChildWindows = ImGuiHoveredFlags.RootWindow | ImGuiHoveredFlags.ChildWindows,
	ForTooltip = 1 << 12,
	Stationary = 1 << 13,
	DelayNone = 1 << 14,
	DelayShort = 1 << 15,
	DelayNormal = 1 << 16,
	NoSharedDelay = 1 << 17,
}

enum ImGuiDockNodeFlags {
	None = 0,
	KeepAliveOnly = 1 << 0,
	NoDockingOverCentralNode = 1 << 2,
	PassthruCentralNode = 1 << 3,
	NoDockingSplit = 1 << 4,
	NoResize = 1 << 5,
	AutoHideTabBar = 1 << 6,
	NoUndocking = 1 << 7,
	NoSplit = ImGuiDockNodeFlags.NoDockingSplit,
	NoDockingInCentralNode = ImGuiDockNodeFlags.NoDockingOverCentralNode,
}

enum ImGuiDragDropFlags {
	None = 0,
	SourceNoPreviewTooltip = 1 << 0,
	SourceNoDisableHover = 1 << 1,
	SourceNoHoldToOpenOthers = 1 << 2,
	SourceAllowNullID = 1 << 3,
	SourceExtern = 1 << 4,
	SourceAutoExpirePayload = 1 << 5,
	AcceptBeforeDelivery = 1 << 10,
	AcceptNoDrawDefaultRect = 1 << 11,
	AcceptNoPreviewTooltip = 1 << 12,
	AcceptPeekOnly = ImGuiDragDropFlags.AcceptBeforeDelivery | ImGuiDragDropFlags.AcceptNoDrawDefaultRect,
}

enum ImGuiDataType {
	S8,
	U8,
	S16,
	U16,
	S32,
	U32,
	S64,
	U64,
	Float,
	Double,
}

enum ImGuiDir {
	None = -1,
	Left = 0,
	Right = 1,
	Up = 2,
	Down = 3,
}

enum ImGuiSortDirection {
	None = 0,
	Ascending = 1,
	Descending = 2,
}

enum ImGuiNavInput {
	Activate,
	Cancel,
	Input,
	Menu,
	DpadLeft,
	DpadRight,
	DpadUp,
	DpadDown,
	LStickLeft,
	LStickRight,
	LStickUp,
	LStickDown,
	FocusPrev,
	FocusNext,
	TweakSlow,
	TweakFast,
	COUNT,
}

enum ImGuiConfigFlags {
	None = 0,
	NavEnableKeyboard = 1 << 0,
	NavEnableGamepad = 1 << 1,
	NavEnableSetMousePos = 1 << 2,
	NavNoCaptureKeyboard = 1 << 3,
	NoMouse = 1 << 4,
	NoMouseCursorChange = 1 << 5,
	DockingEnable = 1 << 6,
	ViewportsEnable = 1 << 10,
	DpiEnableScaleViewports = 1 << 14,
	DpiEnableScaleFonts = 1 << 15,
	IsSRGB = 1 << 20,
	IsTouchScreen = 1 << 21,
}

enum ImGuiBackendFlags {
	None = 0,
	HasGamepad = 1 << 0,
	HasMouseCursors = 1 << 1,
	HasSetMousePos = 1 << 2,
	RendererHasVtxOffset = 1 << 3,
	PlatformHasViewports = 1 << 10,
	HasMouseHoveredViewport = 1 << 11,
	RendererHasViewports = 1 << 12,
}

enum ImGuiCol {
	Text,
	TextDisabled,
	WindowBg,
	ChildBg,
	PopupBg,
	Border,
	BorderShadow,
	FrameBg,
	FrameBgHovered,
	FrameBgActive,
	TitleBg,
	TitleBgActive,
	TitleBgCollapsed,
	MenuBarBg,
	ScrollbarBg,
	ScrollbarGrab,
	ScrollbarGrabHovered,
	ScrollbarGrabActive,
	CheckMark,
	SliderGrab,
	SliderGrabActive,
	Button,
	ButtonHovered,
	ButtonActive,
	Header,
	HeaderHovered,
	HeaderActive,
	Separator,
	SeparatorHovered,
	SeparatorActive,
	ResizeGrip,
	ResizeGripHovered,
	ResizeGripActive,
	Tab,
	TabHovered,
	TabActive,
	TabUnfocused,
	TabUnfocusedActive,
	DockingPreview,
	DockingEmptyBg,
	PlotLines,
	PlotLinesHovered,
	PlotHistogram,
	PlotHistogramHovered,
	TableHeaderBg,
	TableBorderStrong,
	TableBorderLight,
	TableRowBg,
	TableRowBgAlt,
	TextSelectedBg,
	DragDropTarget,
	NavHighlight,
	NavWindowingHighlight,
	NavWindowingDimBg,
	ModalWindowDimBg,
}

enum ImGuiStyleVar {
	Alpha,
	DisabledAlpha,
	WindowPadding,
	WindowRounding,
	WindowBorderSize,
	WindowMinSize,
	WindowTitleAlign,
	ChildRounding,
	ChildBorderSize,
	PopupRounding,
	PopupBorderSize,
	FramePadding,
	FrameRounding,
	FrameBorderSize,
	ItemSpacing,
	ItemInnerSpacing,
	IndentSpacing,
	CellPadding,
	ScrollbarSize,
	ScrollbarRounding,
	GrabMinSize,
	GrabRounding,
	TabRounding,
	TabBarBorderSize,
	ButtonTextAlign,
	SelectableTextAlign,
	SeparatorTextBorderSize,
	SeparatorTextAlign,
	SeparatorTextPadding,
	DockingSeparatorSize,
}

enum ImGuiButtonFlags {
	None = 0,
	MouseButtonLeft = 1 << 0,
	MouseButtonRight = 1 << 1,
	MouseButtonMiddle = 1 << 2,
	MouseButtonMask_ = ImGuiButtonFlags.MouseButtonLeft | ImGuiButtonFlags.MouseButtonRight | ImGuiButtonFlags.MouseButtonMiddle,
	MouseButtonDefault_ = ImGuiButtonFlags.MouseButtonLeft,
}

enum ImGuiColorEditFlags {
	None = 0,
	NoAlpha = 1 << 1,
	NoPicker = 1 << 2,
	NoOptions = 1 << 3,
	NoSmallPreview = 1 << 4,
	NoInputs = 1 << 5,
	NoTooltip = 1 << 6,
	NoLabel = 1 << 7,
	NoSidePreview = 1 << 8,
	NoDragDrop = 1 << 9,
	NoBorder = 1 << 10,
	AlphaBar = 1 << 16,
	AlphaPreview = 1 << 17,
	AlphaPreviewHalf = 1 << 18,
	HDR = 1 << 19,
	DisplayRGB = 1 << 20,
	DisplayHSV = 1 << 21,
	DisplayHex = 1 << 22,
	Uint8 = 1 << 23,
	Float = 1 << 24,
	PickerHueBar = 1 << 25,
	PickerHueWheel = 1 << 26,
	InputRGB = 1 << 27,
	InputHSV = 1 << 28,
	DefaultOptions_ = ImGuiColorEditFlags.Uint8 | ImGuiColorEditFlags.DisplayRGB | ImGuiColorEditFlags.InputRGB | ImGuiColorEditFlags.PickerHueBar,
	DisplayMask_ = ImGuiColorEditFlags.DisplayRGB | ImGuiColorEditFlags.DisplayHSV | ImGuiColorEditFlags.DisplayHex,
	DataTypeMask_ = ImGuiColorEditFlags.Uint8 | ImGuiColorEditFlags.Float,
	PickerMask_ = ImGuiColorEditFlags.PickerHueWheel | ImGuiColorEditFlags.PickerHueBar,
	InputMask_ = ImGuiColorEditFlags.InputRGB | ImGuiColorEditFlags.InputHSV,
}

enum ImGuiSliderFlags {
	None = 0,
	AlwaysClamp = 1 << 4,
	Logarithmic = 1 << 5,
	NoRoundToFormat = 1 << 6,
	NoInput = 1 << 7,
	InvalidMask_ = 0x7000000F,
}

enum ImGuiMouseButton {
	Left = 0,
	Right = 1,
	Middle = 2,
	COUNT = 5,
}

enum ImGuiMouseCursor {
	None = -1,
	Arrow = 0,
	TextInput,
	ResizeAll,
	ResizeNS,
	ResizeEW,
	ResizeNESW,
	ResizeNWSE,
	Hand,
	NotAllowed,
}

enum ImGuiCond {
	None = 0,
	Always = 1 << 0,
	Once = 1 << 1,
	FirstUseEver = 1 << 2,
	Appearing = 1 << 3,
}

enum ImGuiTableFlags {
	None = 0,
	Resizable = 1 << 0,
	Reorderable = 1 << 1,
	Hideable = 1 << 2,
	Sortable = 1 << 3,
	NoSavedSettings = 1 << 4,
	ContextMenuInBody = 1 << 5,
	RowBg = 1 << 6,
	BordersInnerH = 1 << 7,
	BordersOuterH = 1 << 8,
	BordersInnerV = 1 << 9,
	BordersOuterV = 1 << 10,
	BordersH = ImGuiTableFlags.BordersInnerH | ImGuiTableFlags.BordersOuterH,
	BordersV = ImGuiTableFlags.BordersInnerV | ImGuiTableFlags.BordersOuterV,
	BordersInner = ImGuiTableFlags.BordersInnerV | ImGuiTableFlags.BordersInnerH,
	BordersOuter = ImGuiTableFlags.BordersOuterV | ImGuiTableFlags.BordersOuterH,
	Borders = ImGuiTableFlags.BordersInner | ImGuiTableFlags.BordersOuter,
	NoBordersInBody = 1 << 11,
	NoBordersInBodyUntilResize = 1 << 12,
	SizingFixedFit = 1 << 13,
	SizingFixedSame = 2 << 13,
	SizingStretchProp = 3 << 13,
	SizingStretchSame = 4 << 13,
	NoHostExtendX = 1 << 16,
	NoHostExtendY = 1 << 17,
	NoKeepColumnsVisible = 1 << 18,
	PreciseWidths = 1 << 19,
	NoClip = 1 << 20,
	PadOuterX = 1 << 21,
	NoPadOuterX = 1 << 22,
	NoPadInnerX = 1 << 23,
	ScrollX = 1 << 24,
	ScrollY = 1 << 25,
	SortMulti = 1 << 26,
	SortTristate = 1 << 27,
	HighlightHoveredColumn = 1 << 28,
	SizingMask_ = ImGuiTableFlags.SizingFixedFit | ImGuiTableFlags.SizingFixedSame | ImGuiTableFlags.SizingStretchProp | ImGuiTableFlags.SizingStretchSame,
}

enum ImGuiTableColumnFlags {
	None = 0,
	Disabled = 1 << 0,
	DefaultHide = 1 << 1,
	DefaultSort = 1 << 2,
	WidthStretch = 1 << 3,
	WidthFixed = 1 << 4,
	NoResize = 1 << 5,
	NoReorder = 1 << 6,
	NoHide = 1 << 7,
	NoClip = 1 << 8,
	NoSort = 1 << 9,
	NoSortAscending = 1 << 10,
	NoSortDescending = 1 << 11,
	NoHeaderLabel = 1 << 12,
	NoHeaderWidth = 1 << 13,
	PreferSortAscending = 1 << 14,
	PreferSortDescending = 1 << 15,
	IndentEnable = 1 << 16,
	IndentDisable = 1 << 17,
	AngledHeader = 1 << 18,
	IsEnabled = 1 << 24,
	IsVisible = 1 << 25,
	IsSorted = 1 << 26,
	IsHovered = 1 << 27,
	WidthMask_ = ImGuiTableColumnFlags.WidthStretch | ImGuiTableColumnFlags.WidthFixed,
	IndentMask_ = ImGuiTableColumnFlags.IndentEnable | ImGuiTableColumnFlags.IndentDisable,
	StatusMask_ = ImGuiTableColumnFlags.IsEnabled | ImGuiTableColumnFlags.IsVisible | ImGuiTableColumnFlags.IsSorted | ImGuiTableColumnFlags.IsHovered,
	NoDirectResize_ = 1 << 30,
}

enum ImGuiTableRowFlags {
	None = 0,
	Headers = 1 << 0,
}

enum ImGuiTableBgTarget {
	None = 0,
	RowBg0 = 1,
	RowBg1 = 2,
	CellBg = 3,
}

enum ImDrawFlags {
	None = 0,
	Closed = 1 << 0,
	RoundCornersTopLeft = 1 << 4,
	RoundCornersTopRight = 1 << 5,
	RoundCornersBottomLeft = 1 << 6,
	RoundCornersBottomRight = 1 << 7,
	RoundCornersNone = 1 << 8,
	RoundCornersTop = ImDrawFlags.RoundCornersTopLeft | ImDrawFlags.RoundCornersTopRight,
	RoundCornersBottom = ImDrawFlags.RoundCornersBottomLeft | ImDrawFlags.RoundCornersBottomRight,
	RoundCornersLeft = ImDrawFlags.RoundCornersBottomLeft | ImDrawFlags.RoundCornersTopLeft,
	RoundCornersRight = ImDrawFlags.RoundCornersBottomRight | ImDrawFlags.RoundCornersTopRight,
	RoundCornersAll = ImDrawFlags.RoundCornersTopLeft | ImDrawFlags.RoundCornersTopRight | ImDrawFlags.RoundCornersBottomLeft | ImDrawFlags.RoundCornersBottomRight,
	RoundCornersDefault_ = ImDrawFlags.RoundCornersAll,
	RoundCornersMask_ = ImDrawFlags.RoundCornersAll | ImDrawFlags.RoundCornersNone,
}

enum ImDrawListFlags {
	None = 0,
	AntiAliasedLines = 1 << 0,
	AntiAliasedLinesUseTex = 1 << 1,
	AntiAliasedFill = 1 << 2,
	AllowVtxOffset = 1 << 3,
}

enum ImFontAtlasFlags {
	None = 0,
	NoPowerOfTwoHeight = 1 << 0,
	NoMouseCursors = 1 << 1,
	NoBakedLines = 1 << 2,
}

enum ImGuiViewportFlags {
	None = 0,
	IsPlatformWindow = 1 << 0,
	IsPlatformMonitor = 1 << 1,
	OwnedByApp = 1 << 2,
	NoDecoration = 1 << 3,
	NoTaskBarIcon = 1 << 4,
	NoFocusOnAppearing = 1 << 5,
	NoFocusOnClick = 1 << 6,
	NoInputs = 1 << 7,
	NoRendererClear = 1 << 8,
	NoAutoMerge = 1 << 9,
	TopMost = 1 << 10,
	CanHostOtherWindows = 1 << 11,
	IsMinimized = 1 << 12,
	IsFocused = 1 << 13,
}


/// @section Enums
/// These are manually imported and modified enums, for automatic enum exporting see the enums section of ImGui.gml
/*
	Used for encoding multiple returns from various wrappers (ImGuiBegin, ImGuiCollapsingHeader, etc)
	Default is ImGuiReturnFlags.Return for all functions to make wrappers work as close to the library as possible
	
	Return: The return value of the library function
	Pointer: Any reference passed to the library function and modified (this varies per-function; hopefully it all makes sense)
	Both: ^
*/
enum ImGuiReturnMask {
	None = 0,			// Should be unused
	Return = 1 << 0,
	Pointer = 1 << 1,
	Both = ImGuiReturnMask.Return | ImGuiReturnMask.Pointer
}

enum ImGuiTextureType {
	Raw = 0,
	Sprite = 1 << 0,
	Surface = 1 << 1,
	Font = 1 << 2
}

// slightly modified from imgui.h
enum ImGuiKey
{
	// Keyboard
	None = 0,
	Tab = 512,			 // == NamedKey_BEGIN
	LeftArrow,
	RightArrow,
	UpArrow,
	DownArrow,
	PageUp,
	PageDown,
	Home,
	End,
	Insert,
	Delete,
	Backspace,
	Space,
	Enter,
	Escape,
	LeftCtrl, LeftShift, LeftAlt, LeftSuper,
	RightCtrl, RightShift, RightAlt, RightSuper,
	Menu,
	ImGuiKey_0, ImGuiKey_1, ImGuiKey_2, ImGuiKey_3, ImGuiKey_4, ImGuiKey_5, ImGuiKey_6, ImGuiKey_7, ImGuiKey_8, ImGuiKey_9,
	A, B, C, D, E, F, G, H, I, J,
	K, L, M, N, O, P, Q, R, S, T,
	U, V, W, X, Y, Z,
	F1, F2, F3, F4, F5, F6,
	F7, F8, F9, F10, F11, F12,
	Apostrophe,		// '
	Comma,			 // ,
	Minus,			 // -
	Period,			// .
	Slash,			 // /
	Semicolon,		 // ;
	Equal,			 // =
	LeftBracket,	   // [
	Backslash,		 // \ (this text inhibit multiline comment caused by backslash)
	RightBracket,	  // ]
	GraveAccent,	   // `
	CapsLock,
	ScrollLock,
	NumLock,
	PrintScreen,
	Pause,
	Keypad0, Keypad1, Keypad2, Keypad3, Keypad4,
	Keypad5, Keypad6, Keypad7, Keypad8, Keypad9,
	KeypadDecimal,
	KeypadDivide,
	KeypadMultiply,
	KeypadSubtract,
	KeypadAdd,
	KeypadEnter,
	KeypadEqual,

	// Gamepad (some of those are analog values, 0.0f to 1.0f)						  // NAVIGATION ACTION
	// (download controller mapping PNG/PSD at http://dearimgui.org/controls_sheets)
	GamepadStart,		  // Menu (Xbox)	  + (Switch)   Start/Options (PS)
	GamepadBack,		   // View (Xbox)	  - (Switch)   Share (PS)
	GamepadFaceLeft,	   // X (Xbox)		 Y (Switch)   Square (PS)		// Tap: Toggle Menu. Hold: Windowing mode (Focus/Move/Resize windows)
	GamepadFaceRight,	  // B (Xbox)		 A (Switch)   Circle (PS)		// Cancel / Close / Exit
	GamepadFaceUp,		 // Y (Xbox)		 X (Switch)   Triangle (PS)	  // Text Input / On-screen Keyboard
	GamepadFaceDown,	   // A (Xbox)		 B (Switch)   Cross (PS)		 // Activate / Open / Toggle / Tweak
	GamepadDpadLeft,	   // D-pad Left									   // Move / Tweak / Resize Window (in Windowing mode)
	GamepadDpadRight,	  // D-pad Right									  // Move / Tweak / Resize Window (in Windowing mode)
	GamepadDpadUp,		 // D-pad Up										 // Move / Tweak / Resize Window (in Windowing mode)
	GamepadDpadDown,	   // D-pad Down									   // Move / Tweak / Resize Window (in Windowing mode)
	GamepadL1,			 // L Bumper (Xbox)  L (Switch)   L1 (PS)			// Tweak Slower / Focus Previous (in Windowing mode)
	GamepadR1,			 // R Bumper (Xbox)  R (Switch)   R1 (PS)			// Tweak Faster / Focus Next (in Windowing mode)
	GamepadL2,			 // L Trig. (Xbox)   ZL (Switch)  L2 (PS) [Analog]
	GamepadR2,			 // R Trig. (Xbox)   ZR (Switch)  R2 (PS) [Analog]
	GamepadL3,			 // L Stick (Xbox)   L3 (Switch)  L3 (PS)
	GamepadR3,			 // R Stick (Xbox)   R3 (Switch)  R3 (PS)
	GamepadLStickLeft,	 // [Analog]										 // Move Window (in Windowing mode)
	GamepadLStickRight,	// [Analog]										 // Move Window (in Windowing mode)
	GamepadLStickUp,	   // [Analog]										 // Move Window (in Windowing mode)
	GamepadLStickDown,	 // [Analog]										 // Move Window (in Windowing mode)
	GamepadRStickLeft,	 // [Analog]
	GamepadRStickRight,	// [Analog]
	GamepadRStickUp,	   // [Analog]
	GamepadRStickDown,	 // [Analog]

	// Aliases: Mouse Buttons (auto-submitted from AddMouseButtonEvent() calls)
	// - This is mirroring the data also written to io.MouseDown[], io.MouseWheel, in a format allowing them to be accessed via standard key API.
	MouseLeft, MouseRight, MouseMiddle, MouseX1, MouseX2, MouseWheelX, MouseWheelY,

	// [Internal] Reserved for mod storage
	ReservedForModCtrl, ReservedForModShift, ReservedForModAlt, ReservedForModSuper,
	COUNT,

	// Keyboard Modifiers (explicitly submitted by backend via AddKeyEvent() calls)
	// - This is mirroring the data also written to io.KeyCtrl, io.KeyShift, io.KeyAlt, io.KeySuper, in a format allowing
	//   them to be accessed via standard key API, allowing calls such as IsKeyPressed(), IsKeyReleased(), querying duration etc.
	// - Code polling every key (e.g. an interface to detect a key press for input mapping) might want to ignore those
	//   and prefer using the real keys (e.g. LeftCtrl, RightCtrl instead of ImGuiMod_Ctrl).
	// - In theory the value of keyboard modifiers should be roughly equivalent to a logical or of the equivalent left/right keys.
	//   In practice: it's complicated; mods are often provided from different sources. Keyboard layout, IME, sticky keys and
	//   backends tend to interfere and break that equivalence. The safer decision is to relay that ambiguity down to the end-user...
	ImGuiMod_None				   = 0,
	ImGuiMod_Ctrl				   = 1 << 12, // Ctrl
	ImGuiMod_Shift				  = 1 << 13, // Shift
	ImGuiMod_Alt					= 1 << 14, // Option/Menu
	ImGuiMod_Super				  = 1 << 15, // Cmd/Super/Windows
	ImGuiMod_Shortcut			   = 1 << 11, // Alias for Ctrl (non-macOS) _or_ Super (macOS).
	ImGuiMod_Mask_				  = 0xF800,  // 5-bits

	// [Internal] Prior to 1.87 we required user to fill io.KeysDown[512] using their own native index + the io.KeyMap[] array.
	// We are ditching this method but keeping a legacy path for user code doing e.g. IsKeyPressed(MY_NATIVE_KEY_CODE)
	NamedKey_BEGIN		 = 512,
	NamedKey_END		   = ImGuiKey.COUNT,
	NamedKey_COUNT		 = ImGuiKey.NamedKey_END - ImGuiKey.NamedKey_BEGIN,
	KeysData_SIZE		  = ImGuiKey.COUNT,				   // Size of KeysData[]: hold legacy 0..512 keycodes + named keys
	KeysData_OFFSET		= 0,								// First key stored in io.KeysData[0]. Accesses to io.KeysData[] must use (key - KeysData_OFFSET).
};