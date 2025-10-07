---@diagnostic disable: undefined-global

return {
  -- Loops
  s('for', {
    t 'for (',
    i(1, 'int i = 0'),
    t '; ',
    i(2, 'i < _'),
    t '; ',
    i(3, 'i++'),
    t { ') {', '\t' },
    i(4, ''),
    t { '', '}' },
  }),
  -- Documentation Comments
  s('funcdoc', { -- function documentation
    t { '/**', ' * ' },
    i(1, '[description]'),
    t { '', ' *', ' *' },
    i(2, ''),
    t { '', ' */' },
  }),
}
