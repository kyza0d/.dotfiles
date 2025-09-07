require("xeno").setup({
  base = "#11100f",
  accent = "#FFCC33",
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
vim.g.colors_name = "xeno-golden-hour"
