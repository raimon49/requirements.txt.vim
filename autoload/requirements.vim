" the Requirements File Format syntax support for Vim
" Version: 1.2.0
" Author:  raimon <raimon49@hotmail.com>
" License: MIT LICENSE

let s:save_cpo = &cpo
set cpo&vim

if !exists('g:requirements#detect_filename_pattern')
    let g:requirements#detect_filename_pattern = ''
endif

let &cpo = s:save_cpo
unlet s:save_cpo
" vim: et sw=4 ts=4 sts=4:
