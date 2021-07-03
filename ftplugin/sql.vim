" SQL auto uppercase
" Maintainer:  Jorengarenar <https://joren.ga>
" License:     MIT

function! s:upper(k)
  if synIDattr(synIDtrans(synID(line('.'), col('.')-1, 0)), "name") !~# 'Comment\|String'
    return toupper(a:k)
  else
    return a:k " was comment or string, so don't change case
  endif
endfunction

function! s:init(keywords)
  setlocal iskeyword+=-
  for k in a:keywords
    exec "iabbrev <expr> <buffer> " . k . " <SID>upper('" . k . "')"
  endfor
endfunction

let g:SQL_UPPER = get(g:, "SQL_UPPER", 1)

if g:SQL_UPPER == 1
  call <SID>init(sql_upper#keywords1())
elseif g:SQL_UPPER == 2
  call <SID>init(sql_upper#keywords2())
elseif g:SQL_UPPER == 10
  call <SID>init(sql_upper#keywords10())
elseif g:SQL_UPPER == 5
  augroup SQL_UPPER
    autocmd!
    autocmd Syntax <buffer> call <SID>init(syntaxcomplete#OmniSyntaxList())
  augroup END
elseif type(g:SQL_UPPER) == 3
  call <SID>init(g:SQL_UPPER)
endif
