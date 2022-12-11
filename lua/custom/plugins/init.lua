return {
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        -- lua 
        "lua-language-server",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "emmet-ls",
        "json-lsp",

        -- rust
        "rust-analyzer",

        -- python
        "python-lsp-server",
      },
    },
  },

  ["mfussenegger/nvim-dap"] = {},

  ["mxsdev/nvim-dap-vscode-js"] = {
    requires = {"mfussenegger/nvim-dap"},
    config = function ()
       require "custom.dap.js"
    end
  },

  ["theHamsta/nvim-dap-virtual-text"] = {
    requires = "nvim-dap",
    config = function ()
      require("nvim-dap-virtual-text").setup()
    end
  },

  ["rcarriga/nvim-dap-ui"] = {
    requires = "nvim-dap",
    config = function ()
      require("dapui").setup()
    end
  },
}
