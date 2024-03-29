--function ColorMe(color)
--	color = color or "catppuccin-frappe"
--	--[[vim.cmd('colorscheme catppuccin')]]
--	vim.cmd.colorscheme(color)
--end
--
--ColorMe()
 require("catppuccin").setup({
   flavour = "frappe", -- latte, frappe, macchiato, mocha
   background = { -- :h background
     light = "latte",
     dark = "mocha",
   },
   transparent_background = false, -- disables setting the background color.
   show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
   term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
   dim_inactive = {
     enabled = false, -- dims the background color of inactive window
     shade = "dark",
     percentage = 0.15, -- percentage of the shade to apply to the inactive window
   },
   no_italic = false, -- Force no italic
   no_bold = false, -- Force no bold
   no_underline = false, -- Force no underline
   styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
     comments = { "italic" }, -- Change the style of comments
     conditionals = { "italic" },
     loops = {"italic"},
     functions = {"italic"},
     keywords = {"bold"},
     strings = {},
     variables = {},
     numbers = {"italic"},
     booleans = {"italic"},
     properties = {},
     types = {"bold"},
     operators = {},
   },
   color_overrides = {},
   custom_highlights = function(colors)
     return {
       Comment = { fg = "#89AEB1"},
       LineNr = { fg = colors.overlay0 },
       WarningMsg = { style = { "italic" } },
       ErrorMsg = { style = { "italic" } }
     }
   end,
   integrations = {
     cmp = true,
     treesitter = true,
     telescope = { enabled = true },
     harpoon = true,
     indent_blankline = {
       enabled = true,
       scope_color = "",
       colored_indent_levels = false,
     },
     -- native_lsp = {
     --   enabled = true,
     --   virtual_text = {
     --     errors = { "italic" },
     --     hints = { "italic" },
     --     warnings = { "italic" },
     --     information = { "italic" },
     --   },
     --   underlines = {
     --     errors = { "underline" },
     --     hints = { "underline" },
     --     warnings = { "underline" },
     --     information = { "underline" },
     --   },
     --   inlay_hints = {
     --     background = true,
     --   },
     -- },

     -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
   },
 })

 -- setup must be called before loading
 vim.cmd.colorscheme "catppuccin"
