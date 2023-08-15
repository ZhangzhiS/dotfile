return {
  "onsails/lspkind.nvim",
  opts = function(_, opts)
    opts.mode = "symbol"
    opts.preset = "codicons"
    opts.menu = ({
      buffer = "[Buf]",
      nvim_lsp = "[LSP]",
      luasnip = "[LS]",
      nvim_lua = "[Lua]",
      latex_symbols = "[Latex]",
      cmp_tabnine = "[TN]",
      path = "[Path]",
    })
    opts.symbol_map = {
      Array = " ",
      Boolean = " ",
      Class = " ",
      Color = " ",
      Constant = " ",
      Constructor = " ",
      Enum = " ",
      EnumMember = " ",
      Event = " ",
      Field = " ",
      File = " ",
      Folder = " ",
      Function = " ",
      Interface = " ",
      Key = " ",
      Keyword = " ",
      Method = " ",
      Module = " ",
      Namespace = " ",
      Null = " ",
      Number = " ",
      Object = " ",
      Operator = " ",
      Package = " ",
      Property = " ",
      Reference = "  ",
      Snippet = " ",
      String = " ",
      Struct = " ",
      Text = " ",
      TabNine = "",
      TypeParameter = " ",
      Unit = " ",
      Value = " ",
      Variable = " ",
    }
    return opts
  end,
}
