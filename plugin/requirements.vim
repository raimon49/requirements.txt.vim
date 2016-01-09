" the Requirements File Format syntax support for Vim
" Version: 1.1.1
" Author:  raimon <raimon49@hotmail.com>
" License: MIT LICENSE

if exists('g:loaded_requirements')
    finish
endif
let g:loaded_requirements = 1

let s:save_cpo = &cpo
set cpo&vim

let &cpo = s:save_cpo
unlet s:save_cpo
" vim: et sw=4 ts=4 sts=4:
