vim.o.encoding = "utf-8"
vim.api.nvim_set_keymap('n', '<C-f>', ':NERDTreeToggle<CR>', {noremap = true, silent = true})

-- NERDTree settings
vim.g.NERDTreeShowHidden = 1  -- Show hidden files
vim.g.NERDTreeIgnore = {'.git', '.vscode', 'node_modules'}  -- Ignore these files/directories
vim.g.NERDTreeQuitOnOpen = 1  -- Close NERDTree after opening a file

vim.g.NERDTreeWinPos = "left"  -- Use "left" for left side
