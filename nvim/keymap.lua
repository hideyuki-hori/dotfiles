local keymap = vim.keymap

keymap.set('n', 'x', '"_x')
-- 検討中
-- keymap.set('n', 'dw', 'vb"_d')

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

-- 検討中
-- keymap.set('n', '<C-w><left>', '<C-w><')
-- keymap.set('n', '<C-w><right>', '<C-w>>')
-- keymap.set('n', '<C-w><up>', '<C-w>+')
-- keymap.set('n', '<C-w><down>', '<C-w>-')
