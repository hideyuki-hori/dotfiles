local status, packer = pcall(require, 'packer')

if (not status) then
  print('Packer is not installed')
  print('git clone https://github.com/wbthomason/packer.nvim ~/.config/nvim-pack/packer/start/packer.nvim')
  print(':PackerInstall')
  return
end

packer.startup(function(use)
end)

