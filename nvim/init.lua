vim.cmd('autocmd!')

local script_path = vim.fn.stdpath('config') .. '/'
package.path = script_path .. "?.lua;" .. package.path

require('encoding')
require('editing')
require('indentation')
require('keymap')
require('plugins')
require('system')
require('ui')

