local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

local keymap = vim.keymap

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "", -- arrow when folder is closed
          arrow_open = "", -- arrow when folder is open
        },
      },
    },
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
})

local function open_nvim_tree(data)
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

  local directory = vim.fn.isdirectory(data.file) == 1

  if not no_name and not directory then
    return
  end

  if directory then
    vim.cmd.cd(data.file)
  end

  require("nvim-tree.api").tree.open()
end



keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
