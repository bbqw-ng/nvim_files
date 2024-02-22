--[["n" means normal mode, im sure you can guess what the other modes are :)]]--
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--[[Easy copying to system clipboard]]--
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

--[[This makes it so your delete buffer wont change after deleting something.]]--
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>D", "\"_d")
