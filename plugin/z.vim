if exists('g:loaded_zvim') || &cp || v:version < 700
  finish
endif
let g:loaded_zvim = 1

function! Z(cmd)
  let list = readfile(expand('~/.z'))
  call filter(list, 'v:val =~ "'.a:cmd.'"')
  let max = sort(l:list, {a, b -> split(b, '|')[1] - split(a, '|')[1] })[0]
  let path = split(l:max, '|')[0]
  execute "tabe " . l:path
  execute "lcd " . l:path
  if exists(":TabooRename")
    execute "TabooRename " . a:cmd
  endif
endfunction
command! -nargs=+ -complete=command Z call Z(<q-args>)

