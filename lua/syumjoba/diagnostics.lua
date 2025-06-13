
vim.diagnostic.config({
  virtual_text = true,  -- inline error messages
  signs = true,         -- left sign column symbols
  underline = true,     -- underline problematic code
  update_in_insert = false, -- don't update while typing
  severity_sort = true,
})