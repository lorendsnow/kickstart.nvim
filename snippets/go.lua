return {
  -- Error/Ok Handling
  s('nnilerr', {
    t { 'if err != nil {', '\t' },
    i(1, '//action'),
    t { '', '}' },
  }),

  s('herr', {
    i(1, '_'),
    t ', err := ',
    i(2, 'funcCall'),
    t { '', 'if err != nil {', '\t' },
    i(3, '//action'),
    t { '', '}' },
  }),

  s('iferr', {
    t 'if err := ',
    i(1, '[FUNC]'),
    t { '; err != nil {', '\t' },
    i(2, '//action'),
    t { '', '}' },
  }),

  s('ifok', {
    t 'if ok := ',
    i(1, '[FUNC]'),
    t { '; !ok {', '\t' },
    i(2, '//action'),
    t { '', '}' },
  }),

  -- Loops
  s('rangearr', {
    t 'for ',
    i(1, 'i'),
    t ', ',
    i(2, 'v'),
    t ' := range ',
    i(3, 'arr'),
    t { ' {', '\t' },
    i(4, 'action'),
    t { '', '}' },
  }),

  s('for', {
    t 'for ',
    i(1, 'i'),
    t ':=',
    i(2, '0'),
    t '; ',
    rep(1),
    i(3, '<'),
    i(4, '[cond]'),
    t '; ',
    rep(1),
    i(5, '++'),
    t { ' {', '\t' },
    i(6, '//action'),
    t { '', '}' },
  }),

  -- Functions/Methods
  s('nfunc', { -- Normal Function
    t 'func ',
    i(1, 'FuncName'),
    t '(',
    i(2, 'args'),
    t ') ',
    i(3, 'ReturnType'),
    t { ' {', '\t' },
    i(4, '//action'),
    t { '', '}' },
  }),

  s('sfunc', { -- Struct Method
    t 'func (',
    i(1, 'receiver'),
    t ') ',
    i(2, 'FuncName'),
    t '(',
    i(3, 'args'),
    t ') ',
    i(4, 'ReturnType'),
    t { ' {', '\t' },
    i(5, '//action'),
    t { '', '}' },
  }),

  -- Structs
  s('pubstruct', {
    t 'type ',
    i(1, 'StructName'),
    t { ' struct {', '\t' },
    i(2, 'Field'),
    t ' ',
    i(3, 'Type'),
    t { '', '}' },
  }),

  -- Enums
  s('tenum', { -- Typed Enum
    t 'type ',
    i(1, 'Type'),
    t { ' int', '', '' },
    t { 'const (', '\t' },
    i(2, 'Field'),
    t ' ',
    rep(1),
    t ' = iota',
    i(3),
    t { '', ')' },
  }),
}
