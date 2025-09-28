return {
  s('err_return', {
    t { 'if err != nil {', '\treturn nil, err', '}' },
  }),
}
