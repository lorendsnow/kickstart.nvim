return {
  s('err_return', {
    t { 'if err != nil {', '\treturn nil, err', '}' },
  }),

  s('range_arr', {
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
}
