scriptencoding utf-8

let s:todo_directory_tmp = exists('g:todo#directory') ? g:todo#directory : '~/.vim-airline-todo/'
let s:todo_directory = expand(s:todo_directory_tmp)
let s:remind = exists('g:todo#remind') ? g:todo#remind : 'TODO'
let s:todo_recurse = exists('g:todo#recurse') ? g:todo#recurse : 0
let s:todo_suffix = exists('g:todo#suffix') ? g:todo#suffix : '*'

function! s:Filecount(bang, filespec)
    let dir = expand(a:bang)
    if !isdirectory(dir)
        return 0
    endif
    let fnm = a:filespec
    if empty(a:filespec)
        let fnm = '*'
    endif
    if s:todo_recurse == 1
        let fnm = '**/' . fnm
    endif
    let files = filter(split(globpath(dir, fnm), '\n'), '!isdirectory(v:val)')
    return len(files)
endfunction

function! todo#listtask() abort
    if filereadable(s:todo_directory)
        call confirm("cannot create directory, file " . s:todo_directory . " already existed", "&OK")
    elseif isdirectory(s:todo_directory)
    else
        if (has("unix"))
            call system("mkdir ". s:todo_directory)
        elseif(has("win16") || has("win32") || has("win95") ||
                    \has("dos16") || has("dos32") || has("os2"))
            call system("mkdir \"" . s:todo_directory . "\"")
        else
            call confirm("can't create directory : " . s:todo_directory , "&OK")
        endif
    endif
    let n = s:Filecount(s:todo_directory, s:todo_suffix)
    return printf("%s[%d]", s:remind, n)
endfunction

"map <leader>t :exec "NERDTree " . s:todo_directory<cr>
