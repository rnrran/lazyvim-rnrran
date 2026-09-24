return {
  {
    "akinsho/toggleterm.nvim",

    version = "*",

    opts = {

      size = 60,

      direction = "vertical",

      start_in_insert = true,

      insert_mappings = true,

      terminal_mappings = true,

      persist_size = true,

      persist_mode = false,

      close_on_exit = false,

      shade_terminals = false,

      -- scroll buffer
      shell = vim.o.shell,

      float_opts = {
        border = "rounded",
      },
    },
  },
}
