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
            args = {
              '--enable=warning,style,performance,portability',
              '--template=gcc',
              '--inconclusive',
              'src',
            },
          },
        },
      }
    end,
  },
}
