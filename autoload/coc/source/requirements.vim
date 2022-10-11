""
" https://github.com/neoclide/coc.nvim/wiki/Create-custom-source
function! coc#source#requirements#init() abort
    return {
                \ 'shortcut': 'pip',
                \ 'priority': 9,
                \ 'filetypes': ['requirements'],
                \ }
endfunction

""
" https://github.com/neoclide/coc.nvim/wiki/Create-custom-source
"
" Completion pip option and PYPI package names.
function! coc#source#requirements#complete(opt, cb) abort
    call a:cb(g:requirements#items)
endfunction
" vim: et sw=4 ts=4 sts=4:
