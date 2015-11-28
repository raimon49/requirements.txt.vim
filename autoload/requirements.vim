" the Requirements File Format syntax support for Vim
" Version: 0.1
" Author:  raimon <raimon49@hotmail.com>
" License: MIT LICENSE

let s:save_cpo = &cpo
set cpo&vim

if !exists('g:requirements#detect_filename_pattern')
    let g:requirements#detect_filename_pattern = ''
endif


function! requirements#matched_filename(filename)
    if a:filename =~# '\v.*require(ment)?s\.(txt|in)'
        return 1
    endif

    if a:filename =~# '\v.require(ment)?s/.*\.(txt|in)'
        return 1
    endif

    if len(g:requirements#detect_filename_pattern)
        \ && a:filename =~# g:requirements#detect_filename_pattern
        return 1
    endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
" vim: et sw=4 ts=4 sts=4:
