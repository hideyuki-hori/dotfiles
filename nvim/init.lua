vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.path:append { '**' }
vim.opt.wildignore:append { '*/node_modules/*' }
vim.api.nvim_create_autocmd('InsertLeave', {
  pattern = '*',
  command = 'set nopaste'
})
vim.opt.formatoptions:append { 'r' }
vim.opt.clipboard:append { 'unnamedplus' }
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.shell = 'fish'
vim.opt.backup = false
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.opt.swapfile = false
vim.cmd('language messages en_US.utf-8')
vim.wo.number = true
vim.opt.title = true
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.hlsearch = true
vim.opt.scrolloff = 10
vim.opt.inccommand = 'split'
vim.opt.breakindent = true
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'
vim.cmd([[let &t_Cs = '\e[4:3m']])
vim.cmd([[let &t_Ce = '\e[4:0m']])
vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
  augroup END
]]

local keymap = vim.keymap
keymap.set('n', 'x', '"_x')
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')
keymap.set('n', '<C-a>', 'gg<S-v>G')
keymap.set('n', 'te', ':tabedit')
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('n', 'sh', '<C-w>h')
keymap.set('n', 'sk', '<C-w>k')
keymap.set('n', 'sj', '<C-w>j')
keymap.set('n', 'sl', '<C-w>l')

local status, packer = pcall(require, 'packer')
if (not status) then
  print('Packer is not installed')
  print('git clone https://github.com/wbthomason/packer.nvim ~/.config/nvim-pack/packer/start/packer.nvim')
  print(':PackerInstall')
  return
end

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  use 'nvim-lualine/lualine.nvim'
  use 'jiangmiao/auto-pairs'

  use {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  }

  use {
    'plasticboy/vim-markdown',
    config = function()
      vim.g.vim_markdown_new_list_item_indent = 2
      vim.g.vim_markdown_folding_disabled = 1
    end
  }
end)

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function()
    vim.opt_local.foldenable = false
  end,
})
