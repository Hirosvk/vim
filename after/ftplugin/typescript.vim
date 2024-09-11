" vvvv Hiro custom vvvv
set tabstop=2
set shiftwidth=2
set expandtab

" Editing
    " comment/uncomment
    " `'<,'>` is automatically inserted after `:`
    vmap ,c :s#^#//#g <cr>
    vmap ,C :s#^//##g <cr>

    " inserting comment block
    nmap ,c i/*<c-c>
    nmap ,C i*/<c-c>
