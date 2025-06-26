vim.cmd.colorscheme("cyberdream")


-- all highlight groups!
--[[

Comment		any comment
Constant	any constant
String		a string constant: "this is a string"
Character	a character constant: 'c', '\n'
Number		a number constant: 234, 0xff
Boolean		a boolean constant: TRUE, false
Float		a floating point constant: 2.3e10
Identifier	any variable name
Function	function name (also: methods for classes)
Statement	any statement
Conditional	if, then, else, endif, switch, etc.
Repeat		for, do, while, etc.
Label		case, default, etc.
Operator	"sizeof", "+", "*", etc.
Keyword		any other keyword
Exception	try, catch, throw
PreProc		generic Preprocessor
Include		preprocessor #include
Define		preprocessor #define
Macro		same as Define
PreCondit	preprocessor #if, #else, #endif, etc.
Type		int, long, char, etc.
StorageClass	static, register, volatile, etc.
Structure	struct, union, enum, etc.
Typedef		a typedef
Special		any special symbol
SpecialChar	special character in a constant
Tag		you can use CTRL-] on this
Delimiter	character that needs attention
SpecialComment	special things inside a comment
Debug		debugging statements
Underlined	text that stands out, HTML links
Ignore		left blank, hidden  hl-Ignore
Error		any erroneous construct
Todo		anything that needs extra attention; mostly the
		keywords TODO FIXME and XXX
Added		added line in a diff
Changed		changed line in a diff
Removed		removed line in a diff

]]--

local function sethl(group, colour, background, traits)
    traits = traits or {};
    traits.fg = colour;
    traits.bg = background;
    vim.api.nvim_set_hl(0, group, traits);
end

-- Example: Override Comment and Function colors

function JobaTheme()
    sethl("normal", "#DDDBCB", "#060D12");

    sethl("function", "#8EF4F0"); -- functions | was #DE73FF
    sethl("Keyword", "#6297D1"); -- was #2286FF
    sethl("type", "#5162FF", "", { bold = true });
    sethl("identifier", "#C1D8DC"); -- variables in structs
    sethl("typedef", "#40afb0"); -- generics
    sethl("macro", "#F373FF"); -- macros
    sethl("statement", "#99ffbb"); -- few intereseting words in explorer
    sethl("operator", "#DED8A6"); -- operators
    sethl("structure", "#ff0000", "#0000ff");
    sethl("label", "#FFD05F"); -- things like 'outer and 'inner (not lifetimes)
    sethl("special", "#81D3FF"); -- self variable
    sethl("conditional", "#888888");
    sethl("precondit", "#ff0000", "#00ff00");
    sethl("storageclass", "#ffffff", "#ffff00");
    sethl("Delimiter", "#9C9C9C"); -- graphcs, arrows ... everything
    sethl("SpecialChar", "#444444"); --unused underscores
    sethl("tag", "#00ff00"); --idk but there was somethign in the documentation
    sethl("debug", "#ff5522", "#111111");
    sethl("underlined", "#ffffff");
    sethl("ignore", "#0000ff");
    sethl("@lsp.type.enumMember", "#F588FF");
    sethl("@keyword.type", "#82ECFF");

    sethl("comment", "#646D6E", "", { italic = true });
    sethl("todo", "#ffffbb", "#ff0000");

    sethl("string", "#76FFA4"); -- was #00FF5E
    sethl("number", "#4F8FC6", "", { bold = true });
    sethl("boolean", "#3FA3FB", "", { bold = true });
    sethl("constant", "#FF00EA");

    sethl("LineNr", "#889395");

    sethl("added", "#FF6DFF");
    sethl("changed", "#756EFF");
    sethl("removed", "#7200BE");

    sethl("error", "#ff0000");

end

JobaTheme();
