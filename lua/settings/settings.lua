vim.cmd([[ set encoding=utf8 ]])
vim.cmd([[ set nu! ]])
vim.cmd([[ set mouse=a ]])
vim.cmd([[ set wildmenu ]])
vim.cmd([[ set confirm ]])
vim.cmd([[ set incsearch ]])
vim.cmd([[ set title ]])
vim.cmd([[ set t_Co=256 ]])
vim.cmd([[ set shiftwidth=2 ]])
vim.cmd([[ set softtabstop=2 ]])
vim.cmd([[ set expandtab ]])
vim.cmd([[ set shiftwidth=4 ]])
vim.cmd([[ set softtabstop=4 ]])
vim.cmd([[ set expandtab ]])
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
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
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
        theme = "catppuccin"
	-- ... the rest of your lualine config
    }
}
