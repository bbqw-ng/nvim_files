function ColorMe(color)
	color = color or "catppuccin"
	--[[vim.cmd('colorscheme catppuccin')]]--
	vim.cmd.colorscheme(color)
end

ColorMe()
