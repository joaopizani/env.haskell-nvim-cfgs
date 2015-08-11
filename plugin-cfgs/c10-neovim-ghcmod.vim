function! s:auBindingsHaskellGHCModi()
    " nmap <buffer> <silent> <F9> :GhcModType<CR>
    " imap <buffer> <silent> <F9> <C-o>:GhcModType<CR>

    " nmap <buffer> <silent> <F10> :GhcModClear<CR>
    " imap <buffer> <silent> <F10> <C-o>:GhcModClear<CR>

    " nmap <buffer> <silent> <Leader>hi :GhcModImport<CR>
    " imap <buffer> <silent> <Leader>hi <C-o>:GhcModImport<CR>

    nmap <buffer> <silent> <Leader>hc :GhcModCaseSplit<CR>
    imap <buffer> <silent> <Leader>hc <C-o>:GhcModCaseSplit<CR>

    nmap <buffer> <silent> <Leader>hd :GhcModAddDecl<CR>
    imap <buffer> <silent> <Leader>hd <C-o>:GhcModAddDecl<CR>

    nmap <buffer> <silent> <Leader>hr :GhcModRefine<CR>
    imap <buffer> <silent> <Leader>hr <C-o>:GhcModRefine<CR>
endfunction
command! BindingsHaskellGHCModi call <SID>auBindingsHaskellGHCModi()

au BufNewFile,BufRead,WinEnter *.hs,*.lhs   :BindingsHaskellGHCModi
