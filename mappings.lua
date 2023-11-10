---@type MappingsTable
local M = {}


M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<A-j>"] = { "<C-e>", "Screen down", opts = { nowait = true } },
    ["<A-k>"] = { "<C-y>", "Screen up", opts = { nowait = true } },
    -- Search with Spectre
    ["<leader>S"] = {'<cmd>lua require("spectre").toggle()<CR>', "Toggle Spectre" },
    ["<leader>sw"] = {'<cmd>lua require("spectre").open_visual({select_word=true})<CR>', "Search current word" },
    ["<leader>sc"] = {'<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', "Search on current file" },
    -- switch between buffers
    ["<S-l>"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },

    ["<S-h>"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
    ["<leader>sw"] = {'<esc><cmd>lua require("spectre").open_visual()<CR>', "Search current word" },
    ["<leader>fw"] = {
      ':lua require("telescope.builtin").grep_string({ search =  _G.get_visual_selection() })<CR>',
      "indent",
      opts = { noremap = true, silent = true },
    },
  },
  x = {
  }
}

-- more keybinds!

return M
