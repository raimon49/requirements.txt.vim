" the Requirements File Format syntax support for Vim
" Version: 1.8.0
" Author:  raimon <raimon49@hotmail.com>
" License: MIT LICENSE
" The MIT License (MIT)
"
" Copyright (c) 2015 raimon
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in all
" copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
" SOFTWARE.
if !exists('g:requirements#detect_filename_pattern')
    let g:requirements#detect_filename_pattern = ''
endif

function! s:isRequirementsFile()
    let l:filename = expand("%:p")

    return Requirements_matched_filename(l:filename)
endfunction

function! Requirements_matched_filename(filename)
    if fnamemodify(a:filename, ":t") =~# '\vrequire(ment)?s.*\.(txt|in)$'
        return 1
    endif

    if fnamemodify(fnamemodify(a:filename, ":h"), ":t") =~# '\v^require(ment)?s$'
        \ && fnamemodify(a:filename, ":e") =~# '\v^(txt|in)$'
        return 1
    endif

    if fnamemodify(a:filename, ":t") =~# '\v^constraints\.(txt|in)$'
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
au BufNewFile,BufRead * if !did_filetype() | call requirements#shebang() | endif

" vim: et sw=4 ts=4 sts=4:
