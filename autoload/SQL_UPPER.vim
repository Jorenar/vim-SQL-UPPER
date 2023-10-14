function! SQL_UPPER#upper(k)
  if synIDattr(synIDtrans(synID(line('.'), col('.')-1, 0)), "name") !~# 'Comment\|String'
    return toupper(a:k)
  else
    return a:k " was comment or string, so don't change case
  endif
endfunction

function! SQL_UPPER#init(keywords)
  setlocal iskeyword+=-
  for k in a:keywords
    exec "iabbrev <expr> <buffer> " . k . " SQL_UPPER#upper('" . k . "')"
  endfor
endfunction
