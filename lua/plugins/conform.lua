return {
  {
    "stevearc/conform.nvim",
    opts = {
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
      formatters_by_ft = {
        go = { "goimports", "gofumpt" },
        javascript = { "biome-organize-imports", "biome" },
        json = { "jq" },
        jsx = { "biome-organize-imports", "biome" },
        lua = { "stylua" },
        python = { "ruff_format", "ruff_fix" },
        nix = { "alejandra" },
        markdown = { "mdformat" },
        rust = { "rustfmt", lsp_format = "fallback" },
        toml = { "taplo" },
        tsx = { "biome-organize-imports", "biome" },
        typescript = { "biome-organize-imports", "biome" },
        yaml = { "yamlfmt" },
        ["_"] = { "trim_whitespace" },
      },
      formatters = {
        alejandra = { command = "alejandra", args = { "--quiet", "-" } },
      },
    },
  },
}
