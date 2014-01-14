function! airline#extensions#todo#init(ext)
  call a:ext.add_statusline_funcref(function('airline#extensions#todo#apply'))
endfunction

function! airline#extensions#todo#apply(...)
  let w:airline_section_c = get(w:, 'airline_section_c', g:airline_section_c)
  let w:airline_section_c .= g:airline_left_sep . ' %{todo#listtask()}'
endfunction
