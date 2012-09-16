function! SyntaxCheckers_javascript_GetLocList()
    let makeprg = 'wegolint '.shellescape(expand('%')) 

    let errorformat='%W%f(%l): lint warning: %m,%-Z%p^,%W%f(%l): warning: %m,%-Z%p^,%E%f(%l): SyntaxError: %m,%-Z%p^,%-G'
    return SyntasticMake({ 'makeprg': makeprg, 'errorformat': errorformat })
endfunction
