-- Nvim keymaps.

local keymap = vim.keymap.set

--vim.g.mapleader = ''
keymap({'n','i','v'}, '<C-s>', '<cmd>write<cr>', {desc = 'Save'})
keymap({'n','i','v'}, '<C-q>', '<cmd>quit<cr>', {desc = 'Quit'})
keymap({'n','i','v'}, '<C-\\>', '<cmd>undo<cr>', {desc = 'Undo'})
keymap({'n','i','v'}, '<C-r>', '<cmd>redo<cr>', {desc = 'Redo'})
--keymap({'n','i','v'}, '<C-c>', '"*y', {desc = 'Redo'})
keymap({'n','v'}, ';', ':', {desc = 'Colon'})

--keymap({'n', 'x'}, '<leader>', '"+y')
--keymap({'n', 'x'}, '<leader>', '"+p')


function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keymap("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keymap("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

