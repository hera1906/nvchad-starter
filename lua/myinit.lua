local opt = vim.opt

-------------------------------------- options ------------------------------------------

-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

-- Searching
opt.ignorecase = false

-- Wrapping
opt.whichwrap = "<,>,[,]"   -- h and k does not wrap at beginning and end of line, arrows do
