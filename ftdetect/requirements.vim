function! s:isRequirementsFile()
    let l:filename = expand("%:p")

    if l:filename =~# '\v.*requirements\.(txt|in)'
        return 1
    endif

    if l:filename =~# '\v.requirements/.*\.(txt|in)'
        return 1
    endif

    return 0
endfunction

au BufNewFile,BufRead *.{txt,in} if s:isRequirementsFile() | set ft=requirements

" vim: et sw=4 ts=4 sts=4:
