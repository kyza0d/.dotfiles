require("xeno").setup({
  base = "#111111",
  accent = "#00F3CA",
  variation = 0.3,
  contrast = 0.5,
  transparent = false,
  highlights = {
    editor = {
      Normal = {
        bg = "@base.900"
      }
    },
    syntax = {
      Comment = {
        fg = "@base.600"
      }
    }
  },
})
vim.g.colors_name = "xeno-charcoal"
