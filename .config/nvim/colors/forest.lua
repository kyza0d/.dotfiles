require("xeno").setup({
  base = "#141613",
  accent = "#8CBE8C",
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
vim.g.colors_name = "forest"
