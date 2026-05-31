return {
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    -- Match tmux config: M-h/j/k/l (Alt) for pane navigation
    keys = {
      { "<M-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<M-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<M-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<M-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
}
