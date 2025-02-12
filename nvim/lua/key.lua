local k = vim.keymap.set

local builtin = require('telescope.builtin')
k('n', 'ff', builtin.find_files, {})
k('n', 'fg', builtin.live_grep, {})
k('n', 'fb', builtin.buffers, {})
k('n', 'fh', builtin.help_tags, {})
k('n', 'fd', builtin.lsp_definitions, {})

k('n', '<f1>', "<cmd>NvimTreeToggle<cr>", {})

