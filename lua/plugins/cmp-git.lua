return {
  {
    "petertriho/cmp-git",
    dependencies = { "hrsh7th/nvim-cmp" },
    opts = {
      filetypes = { "gitcommit" },
      remotes = { "upstream", "origin" },
    },
    init = function()
      table.insert(require("cmp").get_config().sources, { name = "git" })
    end,
  },
}
