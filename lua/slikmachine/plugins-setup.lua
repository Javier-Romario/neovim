local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()


-- Reloads neovim whenever you save
vim.cmd([[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end

return packer.startup(function(use)
  use "wbthomason/packer.nvim"
  use "folke/tokyonight.nvim"
  use('gelguy/wilder.nvim', { config = function()
    vim.cmd [[call wilder#setup({'modes': [':', '/', '?']})]]
  end }
  )
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use "tpope/vim-surround"
  use "junegunn/fzf"
  use "junegunn/fzf.vim"
  use 'L3MON4D3/LuaSnip'

  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-path"
  use 'marko-cerovac/material.nvim'
  use 'hrsh7th/nvim-cmp'
  use 'williamboman/mason.nvim'
  use "williamboman/mason-lspconfig"
  use 'kdheepak/lazygit.nvim'
  use 'stevearc/aerial.nvim'
  use 'akinsho/bufferline.nvim'
  use "folke/which-key.nvim"
  -- use cmp-luasnip
  -- use emmet-vim
  -- use friendly-snippets
  -- use mason
  -- use mason-lspconfig
  -- use nlsp-settings
  -- use null-ls
  -- use nvim-dap
  -- use nvim-dap-ui
  -- use nvim-dap-virtual-text
  -- use undotree



  if packer_bootstrap then
    require("packer").sync()
  end
end)
