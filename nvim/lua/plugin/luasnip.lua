return {
  "L3MON4D3/LuaSnip",

  dependencies = {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
  opts = {
    history = true,
    delete_check_events = "TextChanged",
  },
  -- stylua: ignore
  keys = {
    {
      "<C-j>",
      function()
        return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>"
      end,
      expr = true, silent = true, mode = "i",
    },
    { "<C-j>", function() require("luasnip").jump(1) end, mode = "s" },
    { "<C-k>", function() require("luasnip").jump(-1) end, mode = { "i", "s" } },
  },
}
