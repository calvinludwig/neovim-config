vim.cmd([[ set encoding=utf8 ]])
vim.cmd([[ set nu! ]])
vim.cmd([[ set mouse=a ]])
vim.cmd([[ set wildmenu ]])
vim.cmd([[ set confirm ]])
vim.cmd([[ set incsearch ]])
vim.cmd([[ set title ]])
vim.cmd([[ set t_Co=256 ]])

vim.cmd([[ set noexpandtab ]])
vim.cmd([[ set softtabstop=0 ]])
vim.cmd([[ set shiftwidth=4 ]])
vim.cmd([[ set tabstop=4 ]])

vim.cmd([[ set cursorline ]])
vim.cmd([[ syntax on ]])
vim.cmd([[ set termguicolors ]])
vim.cmd([[ set nowrap ]])
vim.cmd([[ set completeopt=menuone,noinsert,noselect ]])
vim.cmd([[ set splitright ]])
vim.cmd([[ set splitbelow ]])
vim.cmd([[ set ignorecase ]])
vim.cmd([[ set smartcase ]])
vim.cmd([[ set diffopt+=vertical ]])
vim.cmd([[ set hidden ]])
vim.cmd([[ set nobackup ]])
vim.cmd([[ set nowritebackup ]])
vim.cmd([[ set cmdheight=1 ]])
vim.cmd([[ set shortmess+=c ]])
vim.cmd([[ set signcolumn=yes ]])
vim.cmd([[ set updatetime=750 ]])
vim.cmd([[ filetype plugin indent on ]])
vim.cmd([[ set termguicolors ]])
vim.cmd([[ let g:netrw_banner=0 ]])
vim.cmd([[ let g:markdown_fenced_languages = ['javascript', 'js=javascript', 'json=javascript'] ]])
vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
vim.cmd([[colorscheme catppuccin]])
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd([[ let extension = expand('%:e') ]])


require('lualine').setup {
    options = {
        theme = "catppuccin",
		icons_enabled = true
    },
    sections = { 
        lualine_a = {
            { 
                'mode', 
                fmt = function(str) return str:sub(1,1) end 
            } 
        },
        lualine_b = {'branch'} 
    }
}
vim.cmd([[ let g:coq_settings = { 'auto_start': 'shut-up' } ]])

local lsp = require "lspconfig"
local coq = require "coq"
lsp.rls.setup(coq.lsp_ensure_capabilities())
lsp.lua_lsp.setup(coq.lsp_ensure_capabilities())
