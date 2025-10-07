---@diagnostic disable: undefined-global

return {
  -----------------------------------------------------------
  -- Conditionals                                         |
  -----------------------------------------------------------
  s(
    'if', --if
    fmt(
      [[
	if ({})
	{{
		{};
	}}
   ]],
      {
        i(1),
        i(2),
      }
    )
  ),
  s(
    'elif', --else if
    fmt(
      [[
	else if ({})
	{{
		{};
	}}
	]],
      {
        i(1),
        i(2),
      }
    )
  ),
  s(
    'else', --else
    fmt(
      [[
	else
	{{
		{};
	}}
	]],
      { i(1) }
    )
  ),
  s(
    'switch', --switch
    fmt(
      [[
	switch({})
	{{
	case {}:
		{};
		break;
	case {}:
		{};
		break;
	default:
		{};
	}}
	]],
      { i(1), i(2), i(3), i(4), i(5), i(6) }
    )
  ),
  s(
    'ternary', --ternary
    fmt('({})? {} : {};', {
      i(1, 'condition'),
      i(2, 'if_true'),
      i(3, 'if_false'),
    })
  ),
  -----------------------------------------------------------
  -- Loops                                                |
  -----------------------------------------------------------
  s(
    'for', -- for loop
    fmt(
      [[
  	for ({}; {}; {})
	{{
		{}
	}}
  ]],
      {
        i(1, 'int i = 0'),
        i(2, 'i < '),
        i(3, 'i++'),
        i(4),
      }
    )
  ),
  s(
    'while', -- while loop
    fmt(
      [[
	while ({})
	{{
		{};
	}}
	]],
      {
        i(1),
        i(2),
      }
    )
  ),
  s(
    'dowhile', -- do while
    fmt(
      [[
	do
	{{
		{};
	}} while ({});
	]],
      { i(1), i(2) }
    )
  ),
  -----------------------------------------------------------
  -- Struct Definitions                                   |
  -----------------------------------------------------------
  s(
    'structdef', -- struct type definition
    fmt(
      [[
	typedef struct {{
		{};
	}} {};
	]],
      { i(1), i(2) }
    )
  ),
  -----------------------------------------------------------
  -- Documentation Comments                               |
  -----------------------------------------------------------
  s(
    'funcdoc', -- function doc comment
    fmt(
      [[
  /**
   * {}
   *
   * @param {} {}
   *
   * @return {}
   */
  ]],
      {
        i(1, '[func description]'),
        i(2, '[name]'),
        i(3, '[description]'),
        i(4, '[description]'),
      }
    )
  ),
}
