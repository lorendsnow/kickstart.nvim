return {
  {
    'nvimtools/none-ls.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    opts = function()
      local null_ls = require 'null-ls'
      return {
        diagnostics_format = '#{m} (#{s})',
        sources = {
          null_ls.builtins.diagnostics.cppcheck.with {
            extra_args = {
              '--inconclusive',
            },
          },
        },
      }
    end,
  },
}
