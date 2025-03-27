return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>/", false },
    { "<leader>ff", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
    { "<leader>fw", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },

    { "<leader>fF", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
  },
}
