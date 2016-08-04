" the Requirements File Format syntax support for Vim
" Version: 1.2.0
" Author:  raimon <raimon49@hotmail.com>
" License: MIT LICENSE
"
function! s:isRequirementsFile()
    let l:filename = expand("%:p")

    return requirements#matched_filename(l:filename)
endfunction

au BufNewFile,BufRead *.{txt,in} if s:isRequirementsFile() | set ft=requirements
au BufNewFile,BufRead *.pip set ft=requirements

" vim: et sw=4 ts=4 sts=4:
