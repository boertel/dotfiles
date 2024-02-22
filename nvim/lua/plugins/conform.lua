return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      svelte = { { "prettierd", "prettier" } },
      javascript = { { "prettierd", "prettier" } },
      typescript = { { "prettierd", "prettier" } },
      javascriptreact = { { "prettierd", "prettier" } },
      typescriptreact = { { "prettierd", "prettier" } },
      json = { { "prettierd", "prettier" } },
      ruby = { "standardrb" },
      markdown = { { "prettierd", "prettier" } },
      html = { "htmlbeautifier" },
      bash = { "beautysh" },
      rust = { "rustfmt" },
      yaml = { "yamlfix" },
      toml = { "taplo" },
      css = { { "prettierd", "prettier" } },
      scss = { { "prettierd", "prettier" } },
    },
  },
}
