-- Initialize Mason and Mason-LSP
require("mason").setup()

-- Load lspconfig
local lspconfig = require("lspconfig")

-- Attach function: shared on_attach logic
local on_attach = function(_, bufnr)
  local nmap = function(keys, func, desc)
    vim.keymap.set("n", keys, func, { buffer = bufnr, desc = "LSP: " .. desc })
  end

  nmap("<F3>", vim.lsp.buf.definition, "[G]oto [D]efinition")
  nmap("<leader>doc", vim.lsp.buf.hover, "Hover Documentation")
  nmap("<F2>", vim.lsp.buf.rename, "[R]e[n]ame")
  nmap("<F4>", vim.lsp.buf.code_action, "[C]ode [A]ction")
  -- unusure wether to keep this
  -- nmap("<F5>", vim.lsp.buf.references, "[G]oto [R]eferences")

  vim.api.nvim_buf_create_user_command(bufnr, "Format", function()
    vim.lsp.buf.format()
  end, { desc = "Format current buffer with LSP" })
end

-- Capabilities for autocompletion
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Language server configs

-- C++ (clangd)
lspconfig.clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- Rust (rust-analyzer)
lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})


-- Lua
lspconfig.lua_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = { enable = false },
    },
  }
})

