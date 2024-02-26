-- Define the mappings
local map = vim.api.nvim_set_keymap

-- Use Ranger as the file explorer
map('n', '<C-d>', ':Ranger<CR>', { noremap = true, silent = true })

-- Set up the leader key
vim.g.ranger_map_keys = 0
vim.g.ranger_replace_netrw = 1

-- Set the initial width and height of Ranger window
vim.g.ranger_width = 0.5
vim.g.ranger_height = 0.5

-- Set the transparency of the Ranger window (0 for no transparency, 100 for fully transparent)
vim.g.ranger_transparent = 0

-- Set the Ranger window settings
vim.g.ranger_cmd = 'ranger' -- You can set this to the path of ranger executable if it's not in your PATH

-- Customize Ranger appearance
vim.g.ranger_draw_border = 1
vim.g.ranger_border_attr = {'bold'}
vim.g.ranger_border_highlight = {'Normal', 'Normal'}
vim.g.ranger_devicons_enable = 1
