vim.cmd("set number relativenumber")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader= " "
vim.keymap.set('n', '<leader>rs', function()
  vim.cmd.edit()
  vim.cmd('tabdo windo e')
end, { desc = 'Refresh all sessions' })
-- Ruby
vim.g.rubycomplete_buffer_loading = 1
vim.g.rubycomplete_classes_in_global = 1
vim.g.rubycomplete_rails = 1

