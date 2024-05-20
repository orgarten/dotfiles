local o = vim.o   -- global options
local wo = vim.wo -- windows options
local bo = vim.bo -- buffer options

-- global options
o.hlsearch = true
o.ignorecase = true
o.smartcase = true

-- set syntax
o.syntax = "on"

-- tabstops
o.expandtab = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.autoindent = true

-- show line numbers
o.number = true

-- filetype specific triggers
o.filetype = "on"

-- Window specific options

-- Buffer specific options

