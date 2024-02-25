function ColorMe(color)
	color = color or "catppuccin-frappe"
	--[[vim.cmd('colorscheme catppuccin')]]--
	vim.cmd.colorscheme(color)
end

ColorMe()
