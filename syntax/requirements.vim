syn match requirementsComment "#.*$"
syn match requirementsCommandOption "\v^\[?--?[a-zA-Z\-]*\]?"

hi link requirementsComment Comment
hi link requirementsCommandOption Special
