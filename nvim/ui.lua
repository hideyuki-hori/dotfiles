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

vim.cmd([[let &t_Cs = '\e[4:3m']])
vim.cmd([[let &t_Ce = '\e[4:0m']])
