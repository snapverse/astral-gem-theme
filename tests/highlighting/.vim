function! SuperTab()
  let l:part = strpart(getline('.'),col('.')-2,1)
  if (l:part =~ '^\W\?$')
      return "\<Tab>"
  else
      return "\<C-n>"
  endif
endfunction

imap <Tab> <C-R>=SuperTab()<CR>