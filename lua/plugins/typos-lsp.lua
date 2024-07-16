if true then return {} end
-- Customize typos-lsp sources

---@type LazySpec
return {
  "tekumara/typos-lsp",
  config = function()
    require("lspconfig").typos_lsp.setup {
      init_options = {
        diagnosticSeverity = "Info",
      },
    }
  end,
}
