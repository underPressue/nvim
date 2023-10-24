---@type MappingsTable
local M = {}


M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>S"] = {'<cmd>lua require("spectre").toggle()<CR>', "Toggle Spectre" },
    ["<leader>sw"] = {'<cmd>lua require("spectre").open_visual({select_word=true})<CR>', "Search current word" },
    ["<leader>sc"] = {'<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', "Search on current file" },
  },
  v = {
    [">"] = { ">gv", "indent" },
    ["<leader>sw"] = {'<esc><cmd>lua require("spectre").open_visual()<CR>', "Search current word" },
    ["<leader>fe"] = {
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
