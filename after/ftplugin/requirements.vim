if executable('pip-compile')
    let s:filename = expand("%:p")
    if fnamemodify(s:filename, ":t") ==# 'requirements.in'
        " this is the default filename for pip-compile
        setlocal makeprg=pip-compile
    elseif fnamemodify(s:filename, ":e") ==# 'in'
        \ && Requirements_matched_filename(s:filename)
        setlocal makeprg=pip-compile\ %
    endif
endif
" vim: et sw=4 ts=4 sts=4:
