-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html", "emmet_ls", "cssls", "tsserver", "jsonls",
  "rust_analyzer",
  "pylsp",
  "sqlls",
  "dockerls",
}

local navic = require("nvim-navic")
local custom_on_attach = function (client, bufnr)
  navic.attach(client, bufnr)
end

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = function (client, bufnr)
      on_attach(client, bufnr)
      custom_on_attach(client, bufnr)
    end,
    capabilities = capabilities,
  }
end
