-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "clangd",
  "rust_analyzer",
}

local languages = {
  rust_analyzer = require "custom.languages.rust",
}

for _, lsp in ipairs(servers) do
  local module = languages[lsp]
  if module then
    print(module)
    lspconfig[lsp].setup {
      on_attach = module.on_attach,
      capabilities = capabilities,
    }
  else
    lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end
end
