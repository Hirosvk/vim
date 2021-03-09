set updatetime=100
autocmd CursorHold * if (&filetype == 'netrw' && &number == 0) | set number | endif

