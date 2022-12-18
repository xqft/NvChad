local M = {}

M.dap =  {
  n = {
    ["<F5>"] = {
      function()
        require("dap").continue()
      end,
      "dap continue or start",
    },
    ["<F10>"] = {
      function()
        require("dap").step_over()
      end,
      "dap step over",
    },
    ["<F11>"] = {
    function()
        require("dap").step_into()
      end,
      "dap step into",
    },
    ["<F12>"] = {
      function()
        require("dap").step_out()
      end,
      "dap step out",
    },
    ["<leader>db"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "dap toggle breakpoint",
    },
    ["<leader>dB"] = {
      function()
        require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: '))
      end,
      "dap set breakpoint condition",
    },
    ["<leader>lp"] = {
      function()
        require("dap").set_breakpoint(nil, nil, vim.fn.input('Log point message: '))
      end,
      "dap set breakpoint log",
    },
    ["<leader>dl"] = {
      function()
        require("dap").run_last()
      end,
      "dap run last",
    },
  },
}

return M
