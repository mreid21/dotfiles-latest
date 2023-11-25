return {
    "ThePrimeagen/harpoon",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      -- set keymaps
      local keymap = vim.keymap -- for conciseness
  
      keymap.set(
        "n",
        "<leader>a",
        "<cmd>lua require('harpoon.mark').add_file()<cr>",
        { desc = "Mark file with harpoon" }
      )
      keymap.set("n", "<leader>nn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = "Go to next harpoon mark" })
      keymap.set(
        "n",
        "<leader>pp",
        "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
        { desc = "Go to previous harpoon mark" }
      )
      keymap.set("n", "<leader>hm", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", {desc = "Show harpoon marks"})
    end,
  }