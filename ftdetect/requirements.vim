" the Requirements File Format syntax support for Vim
" Version: 0.1
" Author:  raimon <raimon49@hotmail.com>
" License: MIT LICENSE
"
function! s:isRequirementsFile()
    let l:filename = expand("%:p")

    if l:filename =~# '\v.*require(ment)?s\.(txt|in)'
        return 1
    endif

    if l:filename =~# '\v.require(ment)?s/.*\.(txt|in)'
        return 1
    endif

    return 0
endfunction

au BufNewFile,BufRead *.{txt,in} if s:isRequirementsFile() | set ft=requirements

" vim: et sw=4 ts=4 sts=4:
