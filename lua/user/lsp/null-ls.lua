local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

local formatting = null_ls.builtins.formatting

null_ls.setup({
  debug = false,
  sources = {
    -- formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
    -- formatting.prettier,
    formatting.sumneko_lua,
    formatting.eslint,
  },
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd([[
        augroup LspFormatting
          autocmd! * <buffer>
          " autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 2000)
          autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 2000)
        augroup END
      ]])
    end
  end,
})
