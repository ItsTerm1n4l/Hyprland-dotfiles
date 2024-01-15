local lazypath = vim.fn.stdpath("config") .. "/plugins/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.loader.enable()


require 'lazy-conf'

vim.cmd.colorscheme "spice"
vim.cmd.source "~/.config/nvim/lsp.lua"
vim.cmd.autocmd "TermOpen * setlocal nonumber norelativenumber"
require("keymaps")

vim.o.cursorline = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.wrap = false
vim.o.number = true
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
--vim.o.nofoldenable = true
vim.o.numberwidth = 2
vim.opt.shiftwidth = 2
--vim.opt.list = true
--vim.opt.listchars:append "space:·"
--vim.opt.listchars:append "eol:↴"
-- Import all config files for plugins

for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config')..'/lua/plugins', [[v:val =~ '\.lua$']])) do
  require('plugins.'..file:gsub('%.lua$', ''))
end

--[[
local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  require'lspconfig'[server].setup{}
end
--]]
--require'lspconfig'.setup()
--[[
local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
  return
end

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
    ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
    ["<C-e>"] = cmp.mapping.abort(), -- close completion window
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
  }),
  -- sources for autocompletion
  sources = cmp.config.sources({
    { name = "nvim_lsp" }, -- LSP
    { name = "luasnip" }, -- snippets
    { name = "buffer" }, -- text within the current buffer
    { name = "path" }, -- file system paths
  }),
})
--]]
--[[
require("cmp").config.formatting = {
  format = require("tailwindcss-colorizer-cmp").formatter
}
--]]

