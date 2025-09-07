require("xeno").setup({
  base = "#262635",
  accent = "#5859a0",
  variation = -0.3,
  contrast = 0.1,
  transparent = true,
  highlights = {
    syntax = {
      Comment = {
        fg = "@base.500"
      }
    },
    editor = {
      Normal = {
        bg = "@base.900"
      }
    }
  },
  integrations = {
    ghostty = {
      enabled = true,
      update_config = true
    }
  },
})
vim.g.colors_name = "xeno-ocean"
