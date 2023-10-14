" SQL auto uppercase
" Maintainer:  Jorengarenar
" License:     MIT

let g:SQL_UPPER = get(g:, "SQL_UPPER", "syntax")

if g:SQL_UPPER == v:false
  " do nothing
elseif type(g:SQL_UPPER) == v:t_list
  call SQL_UPPER#init(g:SQL_UPPER)
elseif g:SQL_UPPER == "syntax"
  augroup SQL_UPPER
    autocmd!
    autocmd Syntax <buffer> call SQL_UPPER#init(syntaxcomplete#OmniSyntaxList())
  augroup END
else
  exec 'call SQL_UPPER#init(SQL_UPPER#keywords#'.g:SQL_UPPER.'#list)'
endif
