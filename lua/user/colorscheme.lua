local Color, colors, Group, groups, styles = require("colorbuddy").setup()

-- Use Color.new(<name>, <#rrggbb>) to create new colors
-- They can be accessed through colors.<name>
Color.new("background", "#282c34")
Color.new("red", "#cc6666")
Color.new("green", "#99cc99")
Color.new("yellow", "#f0c674")

-- Define highlights in terms of `colors` and `groups`
Group.new("Function", colors.yellow, colors.background, styles.bold)

Group.new("luaFunctionCall", groups.Function, groups.Function, groups.Function)
-- Define highlights in relative terms of other colors
Group.new("Error", colors.red:light(), nil, styles.bold)

local colorscheme = "darkplus"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end

-- local status, n = pcall(require, "neosolarized")
-- if (not status) then return end
--
-- n.setup({
--   comment_italics = true,
--   background_set = true,
-- })
--
-- local cb = require('colorbuddy.init')
-- local Color = cb.Color
-- local colors = cb.colors
-- local Group = cb.Group
-- local groups = cb.groups
-- local styles = cb.styles
--
-- Color.new('black', '#000000')
-- Group.new('CursorLine', colors.none, colors.base03, styles.NONE, colors.base1)
-- Group.new('CursorLineNr', colors.yellow, colors.black, styles.NONE, colors.base1)
-- Group.new('Visual', colors.none, colors.base03, styles.reverse)
--
-- local cError = groups.Error.fg
-- local cInfo = groups.Information.fg
-- local cWarn = groups.Warning.fg
-- local cHint = groups.Hint.fg
--
-- Group.new("DiagnosticVirtualTextError", cError, cError:dark():dark():dark():dark(), styles.NONE)
-- Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
-- Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark(), styles.NONE)
-- Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)
-- Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
-- Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
-- Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
-- Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)

