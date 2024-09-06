local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")

local opts = {
  sources = {
    -- Requirement: sudo apt install python3-venv
    null_ls.builtins.formatting.black, -- python formatting
    null_ls.builtins.diagnostics.mypy, -- python diagnostics
    null_ls.builtins.diagnostics.ruff, -- python diagnostics
    null_ls.builtins.formatting.clang_format, -- c++ formatting
  },
-- Enable the following to auto-format on save:
--  on_attach = function(client, bufnr)
--    -- format on save...
--    if client.supports_method("textDocument/formatting") then
--      vim.api.nvim_clear_autocmds({
--        group = augroup,
--        buffer = bufnr,
--      })
--      vim.api.nvim_create_autocmd("BufWritePre", {
--        group = augroup,
--        buffer = bufnr,
--        callback = function()
--          vim.lsp.buf.format({bufnr = bufnr})
--        end,
--      })
--    end
--  end,
}
return opts
