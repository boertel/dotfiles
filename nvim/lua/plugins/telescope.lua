return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- disable the keymap to grep files
      -- { "<leader>/", false },
      -- change a keymap
      { "<C-p>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<C-o>", "<cmd>Telescope live_grep<cr>", desc = "Grep Files" },
    },
    opts = function(_, opts)
      local actions = require("telescope.actions")
      opts.defaults = {
        file_ignore_patterns = { "%.jpg", "%.jpeg", "%.png", "%.gif", "%.bmp", "%.mov", "%.webp", "%.avif" },
        mappings = {
          i = {
            ["<c-t>"] = actions.select_tab,
          },
        },
      }
    end,
  },
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
}
