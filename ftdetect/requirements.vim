" the Requirements File Format syntax support for Vim
" Version: 1.4.2
" Author:  raimon <raimon49@hotmail.com>
" License: MIT LICENSE
"
if !exists('g:requirements#detect_filename_pattern')
    let g:requirements#detect_filename_pattern = ''
endif

function! s:isRequirementsFile()
    let l:filename = expand("%:p")

    return Requirements_matched_filename(l:filename)
endfunction

function! Requirements_matched_filename(filename)
    if a:filename =~# '\v.*require(ment)?s\.(txt|in)$'
        return 1
    endif

    if a:filename =~# '\vrequire(ment)?s/.*\.(txt|in)$'
        return 1
    endif

    if a:filename =~# '\vconstraints\.(txt|in)$'
        return 1
    endif

    if len(g:requirements#detect_filename_pattern)
        \ && a:filename =~# g:requirements#detect_filename_pattern
        return 1
    endif

    return 0
endfunction

au BufNewFile,BufRead *.{txt,in} if s:isRequirementsFile() | set ft=requirements | endif
au BufNewFile,BufRead *.pip set ft=requirements

" vim: et sw=4 ts=4 sts=4:
