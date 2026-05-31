return {
  "folke/which-key.nvim",
  opts = {
    win = {
      row = math.huge, -- anchor to bottom
      col = 0,
      width = math.huge,
      height = { min = 4, max = 15 },
      padding = { 1, 1 },
    },
  },
  config = function(_, opts)
    require("which-key").setup(opts)
    -- noice sets cmdheight=0, so which-key lands on top of lualine.
    -- shift it up 1 row after it opens.
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "which_key",
      callback = function()
        local win = vim.api.nvim_get_current_win()
        local cfg = vim.api.nvim_win_get_config(win)
        if cfg.relative ~= "" and cfg.row then
          cfg.row = cfg.row - 1
          vim.api.nvim_win_set_config(win, cfg)
        end
      end,
    })
  end,
}
