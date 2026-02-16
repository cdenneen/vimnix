return {
  {
    "saghen/blink.compat",
    version = "2.*",
    lazy = true,
    opts = {},
  },
  {
    "petertriho/cmp-git",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "saghen/blink.cmp",
    opts = {
      sources = {
        compat = { "git" },
        providers = {
          git = {
            name = "git",
            module = "blink.compat.source",
            opts = {
              filetypes = { "gitcommit", "octo", "NeogitCommitMessage" },
              remotes = { "upstream", "origin" },
            },
          },
        },
      },
    },
  },
}
