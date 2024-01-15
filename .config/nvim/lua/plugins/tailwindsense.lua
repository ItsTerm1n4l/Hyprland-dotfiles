--require'coc-tailwind-intellisense'.setup()
--require'lspconfig'.language-server.setup{}
--[[
local nvim_lsp = require("lspconfig")

local on_attach = function(client, bufnr)
  -- other stuff --
  require("tailwindcss-colors").buf_attach(bufnr)
end

nvim_lsp["tailwindcss"].setup({
  -- other settings --
  on_attach = on_attach,
})
--]]
