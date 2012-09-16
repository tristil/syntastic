function! SyntaxCheckers_ruby_GetLocList()
    let makeprg = 'wegolint '.shellescape(expand('%')) 

    let errorformat =  ',%-GSyntax OK,%E%f:%l: syntax error\, %m,%Z%p^,%W%f:%l: warning: %m,%Z%p^,%W%f:%l: %m,%-C%.%#'
    return SyntasticMake({ 'makeprg': makeprg, 'errorformat': errorformat })
endfunction
