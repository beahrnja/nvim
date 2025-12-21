require("nvchad.configs.lspconfig").defaults()

local nvlsp = require "nvchad.configs.lspconfig"

local servers = {
  "html",
  "cssls",
  "ts_ls",
  "eslint",
  "lua_ls",
}

-- Setup LSP servers using new vim.lsp.config
for _, lsp in ipairs(servers) do
  vim.lsp.config[lsp] = {
    capabilities = nvlsp.capabilities,
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
  }
end

-- Enable the servers
vim.lsp.enable(servers)
