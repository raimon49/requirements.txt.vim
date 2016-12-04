" the Requirements File Format syntax support for Vim
" Version: 1.4.1
" Author:  raimon <raimon49@hotmail.com>
" License: MIT LICENSE

if exists("b:current_syntax") && b:current_syntax == "requirements"
    finish
endif

syn case match

syn region requirementsComment start="[ \t]*#" end="$"
syn match requirementsCommandOption "\v^\[?--?[a-zA-Z\-]*\]?"
syn match requirementsVersionSpecifiers "\v(\=\=\=?|\<\=?|\>\=?|\~\=|\!\=)"
syn match requirementsPackageName "\v^[a-zA-Z][a-zA-Z\-_\.0-9]*"
syn match requirementsVersionControls "\v(git\+?|hg\+|svn\+|bzr\+)\S+"

hi link requirementsComment Comment
hi link requirementsCommandOption Special
hi link requirementsVersionSpecifiers Boolean
hi link requirementsPackageName Identifier
hi link requirementsVersionControls Identifier

let b:current_syntax = "requirements"

" vim: et sw=4 ts=4 sts=4:
