local groups = {
	"Normal",
	"NormalFloat",
	"Comment",
	"Constant",
	"Special",
	"SpecialKey",
	"Identifier",
	"Statement",
	"PreProc",
	"Type",
	"Underlined",
	"Todo",
	"String",
	"Function",
	"Conditional",
	"Repeat",
	"Operator",
	"Structure",
	"LineNr",
	"NonText",
	"SignColumn",
	"CursorLineNr",
	"EndOfBuffer",
	"TelescopeSelection",
	"Folded",
	"VertSplit"
}

for _,highlight in pairs(groups) do
  vim.cmd("hi! " .. highlight .. " guibg=NONE ctermbg=NONE")
end
