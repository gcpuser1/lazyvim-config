return {
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    keys = {
      { "<Leader>dt", "<cmd>DapToggleBreakpoint<CR>", desc = "Toggle Breakpoint" },
      { "<Leader>dc", "<cmd>DapContinue<CR>",         desc = "Continue" },
      { "<Leader>dx", "<cmd>DapTerminate<CR>",         desc = "Terminate" },
      { "<Leader>do", "<cmd>DapStepOver<CR>",          desc = "Step Over" },
    },
    config = function()
      local dap, dapui = require("dap"), require("dapui")
      dapui.setup()
      dap.listeners.before.attach.dapui_config    = function() dapui.open() end
      dap.listeners.before.launch.dapui_config    = function() dapui.open() end
      dap.listeners.before.event_terminated.dapui_config = function() dapui.close() end
      dap.listeners.before.event_exited.dapui_config     = function() dapui.close() end
    end,
  },
}
