vim.cmd([[ let mapleader = " " ]])

vim.cmd([[ nnoremap <leader>v :e $MYVIMRC<CR> ]])
vim.cmd([[ nnoremap <leader>t :ToggleTerm direction=horizontal <CR> ]])

-- Sair com 'q' , se usar gravação de macros altere para <C-q> → Ctrl + q
vim.cmd([[ map q :q<CR> ]])

-- Para Salvar com 'Ctrl + S' nos modos: Normal, Inserção e Visual
-- Precisa adicionar a linha: stty -ixon , ao seu ~/.bashrc
vim.cmd([[ nnoremap <C-s> :w<CR> ]])
vim.cmd([[ inoremap <C-s> <Esc>:w<CR>l ]])
vim.cmd([[ vnoremap <C-s> <Esc>:w<CR> ]])

-- Selecionar tudo com 'Ctrl + A'
vim.cmd([[ map <C-a> ggVG ]])

-- BASH - Auto preenche arquivos .sh que não existirem com a SheBang
vim.cmd([[ autocmd BufNewFile *.sh :call append(0, '#!/usr/bin/env bash') ]])

vim.cmd([[ nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr> ]])
vim.cmd([[ nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr> ]])
vim.cmd([[ nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr> ]])
vim.cmd([[nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr> ]])
