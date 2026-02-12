-- Minimal nvim config - no external dependencies

-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Enable syntax highlighting (built-in)
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')

-- Use a nice built-in colorscheme
-- vim.cmd.colorscheme('habamax')  -- or 'slate', 'desert', 'evening'

-- Better colors for common syntax
-- vim.cmd([[
--   hi Comment ctermfg=gray guifg=gray
--   hi String ctermfg=green guifg=#50fa7b
--   hi Function ctermfg=cyan guifg=#8be9fd
--   hi Keyword ctermfg=magenta guifg=#ff79c6
-- ]])

-- Enable clipboard over SSH via OSC 52
vim.g.clipboard = {
  name = 'OSC 52',
  copy = {
    ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
    ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
  },
  paste = {
    ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
    ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
  },
}
-- Install plugin manager if not already there
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Install catppuccin
require("lazy").setup({
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("catppuccin-macchiato")  -- or catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
    end,
  }
})

-- Your other settings below...
vim.opt.number = true
-- etc.
