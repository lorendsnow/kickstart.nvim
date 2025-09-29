return {
  -- Error/Ok Handling
  s('nnilerr', { -- Basic "if err != nil" block
    t { 'if err != nil {', '\t' },
    i(1, '//action'),
    t { '', '}' },
  }),

  s('herr', { -- Call function that may return err and include if err!= nil block
    i(1, '_'),
    t ', err := ',
    i(2, 'funcCall'),
    t { '', 'if err != nil {', '\t' },
    i(3, '//action'),
    t { '', '}' },
  }),

  s('iferr', { -- Call function that only returns err and handle err if not nil
    t 'if err := ',
    i(1, '[FUNC]'),
    t { '; err != nil {', '\t' },
    i(2, '//action'),
    t { '', '}' },
  }),

  s('ifok', { -- Call function that only returns ok and handles if !ok
    t 'if ok := ',
    i(1, '[FUNC]'),
    t { '; !ok {', '\t' },
    i(2, '//action'),
    t { '', '}' },
  }),

  -- Loops
  s('rangearr', { -- Loop over array/slice range
    t 'for ',
    i(1, 'i'),
    t ', ',
    i(2, 'v'),
    t ' := range ',
    i(3, 'ArrName'),
    t { ' {', '\t' },
    i(4, 'action'),
    t { '', '}' },
  }),

  s('rangemap', { -- Loop over map k/v range
    t 'for ',
    i(1, 'k'),
    t ', ',
    i(2, 'v'),
    t ' := range ',
    i(3, 'MapName'),
    t { ' {', '\t' },
    i(4, '//action'),
    t { '', '}' },
  }),

  s('for', { -- Basic for loop
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

  -- Switch
  s('switch', {
    t 'switch ',
    i(1, '[var]'),
    t { '{', 'case ' },
    i(2, '[expression]'),
    t { ':', '\t' },
    i(3, '//action'),
    t { '', 'case ' },
    i(4, '[expression]'),
    t { ':', '\t' },
    i(5, '//action'),
    t { '', 'default:', '\t' },
    i(6, '//action'),
    t { '', '}' },
  }),

  -- Functions/Methods
  s('nfunc', { -- Normal function
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

  s('sfunc', { -- Struct method
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
  s('pubstruct', { -- Basic public struct with public fields
    t 'type ',
    i(1, 'StructName'),
    t { ' struct {', '\t' },
    i(2, 'Field'),
    t ' ',
    i(3, 'Type'),
    t { '', '}' },
  }),

  s('constructor', { -- Basic NewStruct() constructor function
    t 'func New',
    i(1, 'Struct'),
    t '(',
    i(2),
    t ') *',
    rep(1),
    t { ' {', '\treturn &' },
    rep(1),
    t { '{', '\t\t' },
    i(3),
    t { '', '\t}', '}' },
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
