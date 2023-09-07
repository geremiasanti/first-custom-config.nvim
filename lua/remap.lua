-- exit insert mode with lk
vim.keymap.set("i", "lk", "<esc>")

-- open Netrw
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- new vertical split
vim.keymap.set("n", "<leader>v", "<C-w>v")

-- move between splits
vim.keymap.set("n", "<A-h>", "<C-w>h")
vim.keymap.set("n", "<A-j>", "<C-w>j")
vim.keymap.set("n", "<A-k>", "<C-w>k")
vim.keymap.set("n", "<A-l>", "<C-w>l")

-- Undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- exit terminal mode in a more human way
vim.keymap.set("t", "lk",  "<C-\\><C-n>");

-- Telescope
local telescope_builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope_builtin.help_tags, {})
vim.keymap.set('n', '<leader>fz', telescope_builtin.current_buffer_fuzzy_find, {})

-- Fugitive
vim.keymap.set('n', '<leader>gs', ':vertical G<CR>')

-- Completition
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
cmp.setup({
  mapping = {
    ['<Tab>'] = cmp_action.luasnip_supertab(),
    ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
  }
})

-- Hop
vim.keymap.set('n', '<leader>j', ':HopWord<CR>')
vim.keymap.set('n', '<leader>l', ':HopLineStart<CR>')
