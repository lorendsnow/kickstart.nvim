---@diagnostic disable: undefined-global

return {
  ---------------------------------------------------------
  -- Error/Ok Handling                                    |
  ---------------------------------------------------------
  s(
    'nnilerr', -- "non-nil error"
    fmt( -- Basic "if err != nil" block
      [[
  if err != nil {{
  	{}
  }}
  ]],
      { i(1, '//action') }
    )
  ),

  s(
    'herr', -- "handle error"
    fmt( -- Call function that may return err and include if err!= nil block
      [[
		{}, err := {}
		if err != nil {{
			{}
		}}
		]],
      {
        i(1),
        i(2),
        i(3, '//action'),
      }
    )
  ),

  s(
    'iferr', -- "if error"
    fmt( -- Call function that only returns err and handle err if not nil
      [[
		if err := {}; err != nil {{
			{}
		}}
		]],
      {
        i(1),
        i(2, '//action'),
      }
    )
  ),

  s(
    'ifok',
    fmt( -- Call function that only returns ok and handles if !ok
      [[
		if ok := {}; !ok {{
			{}
		}}
		]],
      {
        i(1),
        i(2, '//action'),
      }
    )
  ),
  ---------------------------------------------------------
  -- Loops                                                |
  ---------------------------------------------------------
  s(
    'rangearr', -- "range over array"
    fmt( -- Loop over array/slice range
      [[
		for {}, {} := range {} {{
			{}
		}}
		]],
      {
        i(1, 'i'),
        i(2, 'v'),
        i(3),
        i(4, '//action'),
      }
    )
  ),

  s(
    'rangemap',
    fmt( -- Loop over map k/v range
      [[
		for {}, {} := range {} {{
			{}
		}}
		]],
      {
        i(1, 'k'),
        i(2, 'v'),
        i(3),
        i(4, '//action'),
      }
    )
  ),

  s(
    'for',
    fmt( -- Basic for loop
      [[
		for {} := {}; {} {} {}; {}{} {{
			{}
		}}
		]],
      {
        i(1, 'i'),
        i(2, '0'),
        rep(1),
        i(3, '<'),
        i(4),
        rep(1),
        i(5, '++'),
        i(6, '//action'),
      }
    )
  ),

  -- Switch
  s(
    'switch',
    fmt(
      [[
		switch {} {{
		case {}:
			{}
		case {}:
			{}
		default:
			{}
		}}
		]],
      {
        i(1),
        i(2),
        i(3, '//action'),
        i(4),
        i(5, '//action'),
        i(6, '//action'),
      }
    )
  ),
  ---------------------------------------------------------
  -- Functions/Methods                                    |
  ---------------------------------------------------------
  s(
    'nfunc',
    fmt( -- Normal function
      [[
		func {}({}) {} {{
			{}
		}}
		]],
      {
        i(1),
        i(2),
        i(3),
        i(4, '//action'),
      }
    )
  ),

  s(
    'sfunc',
    fmt( -- Struct method
      [[
		func ({} *{}) {}({}) {} {{
			{}
		}}
		]],
      {
        i(1),
        i(2),
        i(3),
        i(4),
        i(5),
        i(6, '//action'),
      }
    )
  ),
  ---------------------------------------------------------
  -- Functions/Methods                                    |
  ---------------------------------------------------------
  s(
    'pubstruct',
    fmt( -- Basic public struct with public fields
      [[
		type {} struct {{
			{} {}
			{} {}
		}}
		]],
      {
        i(1),
        i(2, 'field'),
        i(3, 'type'),
        i(4, 'field'),
        i(5, 'type'),
      }
    )
  ),

  s(
    'constructor',
    fmt( -- Basic NewStruct() constructor function
      [[
		func New{}() *{} {{
			return &{}{{ {} }}
		}}
		]],
      {
        i(1, '[STRUCTNAME]'),
        rep(1),
        rep(1),
        i(2),
      }
    )
  ),
  ---------------------------------------------------------
  -- Enums                                                |
  ---------------------------------------------------------
  s(
    'tenum',
    fmt(
      [[
		type {} int
		const (
			{} = iota
			{}
		)
		]],
      {
        i(1),
        i(2),
        i(3),
      }
    )
  ),
}
