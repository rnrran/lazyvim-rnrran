return {

  {
    "akinsho/toggleterm.nvim",

    keys = {

      -- OpenCode toggle
      {
        "<leader>ao",

        function()
          local Terminal = require("toggleterm.terminal").Terminal

          if not _G.opencode then
            _G.opencode = Terminal:new({

              cmd = "opencode",

              direction = "vertical",

              size = 60,

              close_on_exit = false,

              hidden = true,

              on_open = function(term)
                vim.cmd("startinsert")

                -- aktifkan scroll buffer
                vim.opt_local.scrollback = 10000
              end,
            })
          end

          _G.opencode:toggle()
        end,

        desc = "OpenCode AI",
      },

      -- Explain current file / selection
      {
        "<leader>ae",

        function()
          local Terminal = require("toggleterm.terminal").Terminal

          local text

          -- jika ada selection visual
          if vim.fn.mode() == "v" then
            text = table.concat(vim.fn.getline("'<"), "")
          else
            text = vim.fn.expand("%:p")
          end

          local cmd = "echo 'Explain this code/file: " .. text .. "' | opencode"

          local explain = Terminal:new({

            cmd = cmd,

            direction = "vertical",

            size = 60,
          })

          explain:toggle()
        end,

        mode = { "n", "v" },

        desc = "OpenCode Explain",
      },

      -- Refactor selection
      {
        "<leader>ar",

        function()
          local start_line = vim.fn.line("'<")

          local end_line = vim.fn.line("'>")

          local file = vim.fn.expand("%:p")

          local prompt = string.format("Refactor lines %s-%s in file %s", start_line, end_line, file)

          local Terminal = require("toggleterm.terminal").Terminal

          local refactor = Terminal:new({

            cmd = "echo '" .. prompt .. "' | opencode",

            direction = "vertical",

            size = 60,
          })

          refactor:toggle()
        end,

        mode = "v",

        desc = "OpenCode Refactor",
      },
    },
  },
}
