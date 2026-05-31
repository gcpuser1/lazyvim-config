return {
  "iamcco/markdown-preview.nvim",
  opts = function()
    -- bind to all interfaces so Windows browser can reach the WSL server
    vim.g.mkdp_open_to_the_world = 1
    vim.g.mkdp_echo_preview_url = 1
  end,
}
