return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  config = function()
    require("bufferline").setup {
      options = {
        mode = "tabs",
        separator_style = "thin",
        always_show_bufferline = false, 
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            text_align = "center",
            highlight = "Directory",
          }
        },
      },
    }
  end,
}
