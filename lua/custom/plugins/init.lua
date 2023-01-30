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

        -- db
        "sqls",
      },
    },
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    config = function ()
      local null_ls = require "null-ls"
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.rustfmt
        }
      })
    end
  },

  ["folke/trouble.nvim"] = {
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup()
    end
  },

  ["folke/lsp-colors.nvim"] = {},

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
      require("custom.plugins.dap")
    end
  },

  ["hrsh7th/nvim-cmp"] = {
    override_options = {
      completion = {
        completeopt = "menu,menuone,noinsert"
      },

      sources = {
        { name = "crates" }
      }
    }
  },

  ["iamcco/markdown-preview.nvim"] = {
    run = function() vim.fn["mkdp#util#install"]() end,
  },

  ["nvim-treesitter/nvim-treesitter-refactor"] = {},

  ["saecki/crates.nvim"] = {
    config = function()
      require('crates').setup()
    end,
    event = { "BufRead Cargo.toml" }
  },

  ["SmiteshP/nvim-navic"] = {
    requires = "neovim/nvim-lspconfig",
    config = function()
      vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
    end
  },

  ["sindrets/diffview.nvim"] = {},

  ["akinsho/git-conflict.nvim"] = {
    config = function()
      require('git-conflict').setup()
    end
  },

  ["https://gitlab.com/yorickpeterse/nvim-pqf.git"] = {
    config = function()
      require('pqf').setup()
    end
  },
}
