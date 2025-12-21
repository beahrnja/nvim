local options = {
  ensure_installed = {
    -- LSP servers
    "lua-language-server",
    "typescript-language-server",
    "html-lsp",
    "css-lsp",

    -- Formatters
    "prettier",
    "stylua",
    "black",

    -- Linters
    "eslint-lsp",
  },
}

return options
