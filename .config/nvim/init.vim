" Basic Configurations
" FernuDev Github - https://github.com/Fernu292

set number
set mouse=a
syntax enable
set showcmd
set encoding=utf-8
set showmatch


set expandtab
set tabstop=4
set shiftwidth=0
set softtabstop=0
set autoindent
set smarttab

call plug#begin()
    Plug 'glepnir/dashboard-nvim'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'navarasu/onedark.nvim'
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
    Plug 'folke/tokyonight.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-tree/nvim-tree.lua'
    Plug 'tpope/vim-fugitive'
    " Plugins para apuntes y Markdown
    Plug 'preservim/vim-markdown'
    Plug 'junegunn/goyo.vim'
    Plug 'lukas-reineke/headlines.nvim'
    Plug 'vimwiki/vimwiki'
call plug#end()

lua require('dashboard_config')

" Calling the Lualine pluggin

colorscheme catppuccin 

lua << END
require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'tokyonight'
    }
}
require('onedark').setup {
    style = "dark",
    transparent = true,
}
require('onedark').load()
END

lua << END
require('nvim-tree').setup {
  view = {
    width = 30,
    side = 'left',
    preserve_window_proportions = true,
  },
  renderer = {
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
  },
  filters = {
    dotfiles = false,
  },
}
-- Atajo para abrir/cerrar el navegador
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { desc = 'Toggle NvimTree' })
END



