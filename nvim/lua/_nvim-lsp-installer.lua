-- Setup nvim-cmp.
local status_ok, lspinstaller = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

lspinstaller.setup{}
