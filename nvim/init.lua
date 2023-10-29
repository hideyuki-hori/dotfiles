vim.cmd('autocmd!')

local init_path = vim.fn.expand('%:p')
local lua_path = vim.fn.fnamemodify(init_path, ':h') .. '/'

local files = vim.fn.globpath(lua_path, '*.lua', false, true)
files = vim.tbl_filter(function (file)
  return not file:match('init.lua$')
end, files)

for _, file in ipairs(files) do
  local module = file:sub(#lua_path + 1, -5):gsub('/', '.')
  require(module)
end
