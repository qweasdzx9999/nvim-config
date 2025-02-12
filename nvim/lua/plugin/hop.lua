return {
    'smoka7/hop.nvim',
    version = "*",
    opts = {},
    config = function()
        local hop = require('hop')
        hop.setup { keys = 'wertyuioasdfghjklcvbnm;' }
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'fj', function()
  hop.hint_words({ direction = directions.AFTER_CURSOR})
end, {remap=true})
vim.keymap.set('', 'fk', function()
  hop.hint_words({ direction = directions.BEFORE_CURSOR})
end, {remap=true})
end,
}
