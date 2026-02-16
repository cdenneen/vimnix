local function skip_if_missing(cmd)
  return function(_, server_opts)
    if vim.fn.executable(cmd) == 0 then
      server_opts.enabled = false
      return true
    end
  end
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.setup = opts.setup or {}

      opts.servers.gopls = { mason = false }
      opts.setup.gopls = skip_if_missing("gopls")

      opts.servers.pyright = { mason = false }
      opts.setup.pyright = skip_if_missing("pyright")

      opts.servers.rust_analyzer = { mason = false }
      opts.setup.rust_analyzer = skip_if_missing("rust-analyzer")

      opts.servers.ts_ls = { mason = false }
      opts.setup.ts_ls = skip_if_missing("typescript-language-server")

      opts.servers.clangd = { mason = false }
      opts.setup.clangd = skip_if_missing("clangd")

      opts.servers.nixd = { mason = false }
      opts.setup.nixd = skip_if_missing("nixd")

      return opts
    end,
  },
}
