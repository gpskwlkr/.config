local status, builtin = pcall(require, 'telescope.builtin')
if not status then
    return
end

local keymap = vim.keymap

keymap.set('n', '<leader>pf', builtin.find_files, {})
keymap.set('n', '<C-p>', builtin.git_files, {})
keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
keymap.set('n', '<leader>vh', builtin.help_tags, {})
