local fn = vim.fn
local o = vim.o
local g = vim.g

-- Enable Line numbers
o.numbers = true

-- Set font to "FiraCode NerdFonts Monospaced"
o.guifont = "FuraCode NF"

-- Enable AutoSaving
g.auto_save = true

-- Set Indention Depth
o.shiftwidth = 2

require 'plugins.lua'
