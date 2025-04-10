return {
  "fzf-lua",
  keys = {
    { "<C-p>", "<cmd>lua require('fzf-lua').files()<CR>", desc = "Open files" },
    { "<C-o>", "<cmd>lua require('fzf-lua').grep_project()<CR>", desc = "Grep" },
  },
  opts = function(_, opts)
    local config = require("fzf-lua.config")
    local actions = require("fzf-lua.actions")

    config.defaults.actions.files["ctrl-t"] = actions.file_tabedit
    config.defaults.file_ignore_patterns = {
      "node_modules/",
      "dist/",
      ".next/",
      ".git/",
      ".gitlab/",
      "build/",
      "target/",
      "package-lock.json",
      "pnpm-lock.yaml",
      "yarn.lock",
    }
  end,
}
