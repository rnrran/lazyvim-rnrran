return {

  -- Gruvbox
  {
    "ellisonleao/gruvbox.nvim",

    priority = 1000,

    opts = {
      contrast = "hard",

      transparent_mode = false,

      italic = {
        strings = true,
        comments = true,
        operators = false,
        folds = true,
      },
    },
  },

  -- Kanagawa
  {
    "rebelot/kanagawa.nvim",

    priority = 1000,

    opts = {

      theme = "dragon",

      background = {
        dark = "dragon",
        light = "lotus",
      },

      transparent = false,

      dimInactive = true,
    },
  },

  -- Default theme LazyVim
  {
    "LazyVim/LazyVim",

    opts = {

      colorscheme = "kanagawa-wave",
    },
  },
}
