-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Set the font

-- vim.cmd[[set guifont=YourFontName:h12]]
-- Set the font size
vim.o.guifontsize = 18
vim.g.netrw_list_hide = (vim.fn["netrw_gitignore#Hide"]()) .. [[,\(^\|\s\s\)\zs\.\S\+]]

vim.g.copilot_filetypes = { markdown = false }
