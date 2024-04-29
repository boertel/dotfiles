vim.g.mapleader = ","

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Set the font size
vim.o.guifontsize = 18
vim.g.netrw_list_hide = (vim.fn["netrw_gitignore#Hide"]()) .. [[,\(^\|\s\s\)\zs\.\S\+]]

-- Use markdown for blog posts so copilot is more distracted than anything
vim.g.copilot_filetypes = { markdown = false }

vim.cmd("cnoreabbrev W w")
vim.cmd("cnoreabbrev E e")
vim.cmd("cnoreabbrev Wq wq")
vim.cmd("cnoreabbrev vpslit vsplit")

-- abbreviation <insert> mode
vim.cmd("iabbrev onsole console")
vim.cmd("iabbrev cosnole console")
vim.cmd("iabbrev consoel console")
vim.cmd("iabbrev cosnoel console")
vim.cmd("iabbrev lgo log")
vim.cmd("iabbrev vehicule vehicle")
vim.cmd("iabbrev Vehicule Vehicle")
vim.cmd("iabbrev reutrn return")

vim.api.nvim_set_keymap(
  "n",
  "<space>e",
  ':lua vim.diagnostic.open_float(0, {scope="line"})<CR>',
  { noremap = true, silent = true }
)

-- -- Disable system clipboard and use Neovim clipboard
vim.opt.clipboard = ""
-- map({ "n", "x" }, "y", '"+y')
-- map("n", "p", '""p')
