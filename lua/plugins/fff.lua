return {
  "dmtrKovalenko/fff.nvim",
  build = function()
    -- this will download prebuild binary or try to use existing rustup toolchain to build from source
    -- (if you are using lazy you can use gb for rebuilding a plugin if needed)
    require("fff.download").download_or_build_binary()
  end,
  -- No need to lazy-load with lazy.nvim.
  -- This plugin initializes itself lazily.
  lazy = false,
  opts = {
    keymaps = {
      close = "<Esc>",
      select = "<CR>",
      select_split = "<C-s>",
      select_vsplit = "<C-v>",
      select_tab = "<C-t>",
      -- you can assign multiple keys to any action
      move_up = { "<Up>", "<C-p>" },
      move_down = { "<Down>", "<C-n>" },
      preview_scroll_up = "<C-b>",
      preview_scroll_down = "<C-f>",
      toggle_debug = "<F2>",
      -- goes to the previous query in history
      cycle_previous_query = "<C-Up>",
      -- multi-select keymaps for quickfix
      toggle_select = "<Tab>",
      send_to_quickfix = "<C-q>",
    },
  },
  keys = {
    {
      "ff",
      function()
        require("fff").find_files()
      end,
      desc = "FFFind files",
    },
  },
}
