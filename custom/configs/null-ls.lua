local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {

  -- webdev stuff
  formatting.prettier,
  diagnostics.eslint,

  -- Lua
  formatting.stylua,

  -- Go
  formatting.gofmt,

  -- Shell
  formatting.shfmt,
  diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
