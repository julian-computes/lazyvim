return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = {
    {
      "<C-'>",
      function()
        require("toggleterm").toggle()
      end,
      mode = { "n", "t" },
      desc = "Toggle Terminal",
    },
  },
  opts = {
    -- Toggle terminal with Ctrl+'
    open_mapping = [[<C-'>]],
    -- Use floating terminal by default
    direction = "float",
    -- Configure floating window appearance
    float_opts = {
      border = "curved",
    },
  },
}
