return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    -- { "<leader>/", false },
    -- change a keymap
    { "<C-p>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
  },
  opts = {
    defaults = {
      file_ignore_patterns = { "%.jpg", "%.jpeg", "%.png", "%.gif", "%.bmp", "%.mov", "%.webp", "%.avif" },
    },
  },
}
