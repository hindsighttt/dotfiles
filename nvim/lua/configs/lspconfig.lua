
require("nvchad.configs.lspconfig").defaults()

vim.lsp.config("clangd", {
  cmd = { "clangd", "--enable-config" },
})

local servers = { "html", "cssls", "clangd" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
