syn match requirementsComment "#.*$"
syn match requirementsCommandOption "\v^\[?--?[a-zA-Z\-]*\]?"
syn match requirementsVersionSpecifiers "\v(\=\=\=?|\<\=?|\>\=?|\~\=|\!\=)"

hi link requirementsComment Comment
hi link requirementsCommandOption Special
hi link requirementsVersionspecifiers Boolean
