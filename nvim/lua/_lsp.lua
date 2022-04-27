local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
	return
end

vim.lsp.buf.formatting_sync(nil, 1000)

-- Enable the following language servers
local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver', 'gopls' }
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end