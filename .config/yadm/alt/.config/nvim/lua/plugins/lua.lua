local fn = vim.fn

-- Packer Boostrap 
local install_path = fn.stdpath('data')..'site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packeradd packer.nvim'
end

local packer_exists = pcall(vim.cmd, [[packeradd packer.nvim]])

-- Packer setup
return require('packer').startup(
  function()
    use {'wbthomason/packer.nvim', opt=true}

    -- fzf
    use {'junegunn/fzf', dir='~/.fzf', run='./install --all'}
    use {'junegunn/fzf.vim'}

    -- limelight
    use {'junegunn/limelight.vim'}

    -- easy align
    use {'junegunn/vim-easy-align'}

    -- deoplete
    use {'Shougo/deoplete.nvim', run=':UpdateRemotePlugins'}

    -- autoclose
    use {'townk/vim-autoclose'}
  end
)
