" System Settings
  set directory=~/.vim/swapfiles//

  " Path to CtrlP pluglin
  set runtimepath^=~/.vim/bundle/ctrlp.vim
  set runtimepath^=~/.vim/bundle/vim-matchopen
  set runtimepath^=~/.vim/after/ftplugin/vim-jsonnet

  " removed cpp and h form the default sequence
  let g:netrw_sort_sequence="[\/]$,\<core\%(\.\d\+\)\=\>,\.c$,\~\=\*$,*,\.o$,\.obj$,\.info$,\.swp$,\.bak$,\~$"

  set wildignore=*/tmp/*
  let g:ctrlp_user_command = 'if [ -d ".git" ]; then find %s -type f | grep -v "^\.\/\." | grep -v node_modules | grep -v ".Trash" | grep -v "bundle/ruby/" | grep -v ".git" | grep -v ".tmp"; fi'

" Navigation
  "Ctrl-C to Escape from insert model; new MacVim removed what was default mapping, ugh
  imap <c-c> <Esc>

  "Netwr opens file in the previous window
  let g:netrw_browse_split = 3
  "preview window shown in a vertically split window.
  let g:netrw_preview = 1
  let g:netrw_winsize = 80 "80%

  " For easier virtical split navigation
  "   ,wl  -> to the right pane
  "   ,wh  -> to the left pane
  "   ,w,w -> to the other pane
  "   ,wr  -> swap panes
  nmap ,w <c-w>

  " Resizing vertical pane
  nmap ,+ :vertical resize +5<cr>
  nmap ,- :vertical resize -5<cr>

  " When built-in vim doesn't support clipboard access, I need to disable line
  " numbers to copy lines manually
  nmap ,n :set nonumber<CR>:set norelativenumber<CR>
  nmap ,N :set number<CR>:set relativenumber<CR>

  nmap <Space>f zf
  nmap <Space>o zo
  nmap <Space>O zO

  vmap <Space>f zf
  vmap <Space>o zo
  vmap <Space>O zO

  nmap <Space>e :call GoDown()<CR>
  nmap <Space>E :call GoUp()<CR>
  vmap <Space>e :call GoDown()<CR>
  vmap <Space>E :call GoUp()<CR>

  function! GoDown()
    let &l:spaces = matchstr(getline('.'), '^\s\+')
    normal mX
    execute '/^'.l:spaces.'\S'
  endfunction

  function! GoUp()
    let &spaces = matchstr(getline('.'), '^\s\+')
    normal mX
    execute '?^'.l:spaces.'\S'
  endfunction

  " Enabling textwrap with indent (supposed to be a new feature in later version of vim)
  set breakindent
  " When wrapping text, don't break in the middle of the word
  set wrap linebreak nolist

  " Making backspace(delete) key work like conventional editor
  set backspace=indent,eol,start

" Display Format & Syntax
  " Highlight trailing spaces
  autocmd BufEnter * :highlight ExtraWhitespace ctermbg=2 guibg=lightgreen
  autocmd BufEnter * :match ExtraWhitespace /\s\+$/

  " Setting MacVim background color to 'dark'
  set bg=dark
  " MacVim's 'dark' theme has a gray background, I prefer black
  autocmd VimEnter * :highlight Normal guibg=black

  " Show cursor positions
  set ruler

  " Formatting Line Numbers
  set relativenumber
" System Settings
  set directory=~/.vim/swapfiles//

  " Path to CtrlP pluglin
  set runtimepath^=~/.vim/bundle/ctrlp.vim
  set runtimepath^=~/.vim/bundle/vim-matchopen

  set wildignore=*/tmp/*
  let g:ctrlp_user_command = 'if [ -d ".git" ]; then find %s -type f | grep -v "^\.\/\." | grep -v node_modules | grep -v ".Trash" | grep -v "bundle/ruby/" | grep -v ".git" | grep -v ".tmp"; fi'

" Navigation
  "Ctrl-C to Escape from insert model; new MacVim removed what was default mapping, ugh
  imap <c-c> <Esc>

  "Netwr opens file in the previous window
  let g:netrw_browse_split = 4
  "preview window shown in a vertically split window.
  let g:netrw_preview = 1
  let g:netrw_winsize = 80 "80%

  " vs dir view
  nmap <Space>d :30vs <C-R>=expand("%:p:h")<CR><CR>

  " For easier virtical split navigation
  "   ,wl  -> to the right pane
  "   ,wh  -> to the left pane
  "   ,w,w -> to the other pane
  "   ,wr  -> swap panes
  nmap ,w <c-w>

  " Resizing vertical pane
  nmap ,+ :vertical resize +5<cr>
  nmap ,- :vertical resize -5<cr>

  " When built-in vim doesn't support clipboard access, I need to disable line
  " numbers to copy lines manually
  nmap ,n :set nonumber<CR>:set norelativenumber<CR>
  nmap ,N :set number<CR>:set relativenumber<CR>

  nmap <Space>t ,h :/\<<C-r><C-w>\>/<CR>

  nmap <Space>f zf
  nmap <Space>o zo
  nmap <Space>O zO

  vmap <Space>f zf
  vmap <Space>o zo
  vmap <Space>O zO

  nmap <Space>e :call GoDown()<CR>
  nmap <Space>E :call GoUp()<CR>
  vmap <Space>e :call GoDown()<CR>
  vmap <Space>E :call GoUp()<CR>

  function! GoDown()
    let spaces = matchstr(getline('.'), '^\s\+')
    normal mX
    execute '/^'.spaces.'\S'
  endfunction

  function! GoUp()
    let spaces = matchstr(getline('.'), '^\s\+')
    normal mX
    execute '?^'.spaces.'\S'
  endfunction

  " Enabling textwrap with indent (supposed to be a new feature in later version of vim)
  set breakindent
  " When wrapping text, don't break in the middle of the word
  set wrap linebreak nolist

  " Making backspace(delete) key work like conventional editor
  set backspace=indent,eol,start

" Display Format & Syntax
  " Highlight trailing spaces
  autocmd BufEnter * :highlight ExtraWhitespace ctermbg=2 guibg=lightgreen
  autocmd BufEnter * :match ExtraWhitespace /\s\+$/

  " Setting MacVim background color to 'dark'
  set bg=dark
  " MacVim's 'dark' theme has a gray background, I prefer black
  autocmd VimEnter * :highlight Normal guibg=black

  " Show cursor positions
  set ruler

  " Formatting Line Numbers
  set relativenumber
  set number
  hi CursorLineNr ctermfg=15 ctermbg=5

  " Show Input in Normal Mode
  set showcmd

  " Change matching paren/brackets' color
  hi MatchParen term=bold,underline cterm=bold,underline ctermbg=0

  "set/unset hlsearch
  hi Search ctermbg=3 guibg=yellow
  nmap ,h :set hlsearch <CR>
  nmap ,H :set nohlsearch <CR>

  " This way Vim handles long lines better
  set synmaxcol=256


" File type syntax
  " Enable lanuage specific syntax (not sure if this is necessary)
  syntax on

  " Enable filetype plugins
  filetype plugin on

  " JS (for some reason, ruby.vim is loaded for js file, overriding
  " js syntax)
  autocmd BufEnter *.js,*.ts setlocal filetype=javascript

  autocmd BufEnter *.py setlocal filetype=python

  " Sass (for some reason, ruby.vim is loaded for js file, overriding
  " scss syntax)
  autocmd BufEnter *.scss setlocal filetype=scss

  autocmd BufEnter *.rb,*.rake,*.jbuilder setlocal filetype=ruby

  autocmd BufNewFile,BufRead Dockerfile* setlocal filetype=dockerfile

  autocmd BufEnter *.rb,*.rake,*.jbuilder,*yml,*yaml,*.py call SetCommentWithSharp()
  autocmd BufEnter *.js,*.jsx,*.ts,*tsx,*.cpp,*.hpp,*.c,*.h call SetCommentWithBackSlash()

  function! SetCommentWithSharp()
    vmap ,c :s/^\(\s*\)\(.\)/\1# \2/g <cr>
    vmap ,C :s/^\(\s*\)\(#\s*\)/\1/g <cr>
  endfunction

  function! SetCommentWithBackSlash()
    vmap ,c :s#^\(\s*\)\(.\)#\1//  \2#g <cr>
    vmap ,C :s#^\(\s*\)\(//\s*\)#\1#g <cr>
  endfunction

  " Format json files
  nmap ,json :%!python -m json.tool<CR>:%s/    /  /g<CR>
  vmap ,json :'<,'>!python -m json.tool<CR>:%s/    /  /g<CR>

  nmap ,xml :call XmlPrettify()<CR>

  function! XmlPrettify()
    exe "silent! %s/^\s\+//g"
    exe "silent! %s/>[ \n\t]\+</></g"
    exe "silent! %s/></>\r</g"

    let spaces = 0
    let line_n = 1
    let total_line = line('$')

    while line_n <= total_line
      let line = getline(line_n)

      if (line =~ '^</[a-zA-Z]' && spaces >= 0)
        let spaces -= 2
      endif

      let i = 0
      while i < spaces
        execute ":".line_n."s/^/ /"
        let i += 1
      endwhile

      if (line =~ '^<[a-zA-Z]')
        if (line =~ '</[a-zA-Z]*>$')
          "nothing
        elseif (line =~ '/>$')
          "nothing
        else
          let spaces += 2
        endif
      endif

      let line_n += 1
    endwhile
  endfunction

" Editing
  " Remove whitespace
  nmap ,ss :%s/\s\+$//g <cr>

  " Nice for PR reviews (opens the selected string filename in split windows)
  nmap <Space>m2 :!mvim <c-r>0 ../manowar-2/<c-r>0 -O<CR>
  nmap <Space>s2 :!mvim <c-r>0 ../sketchup-toolbar-dev-2/<c-r>0 -O<CR>

  nmap <Space>cm :!open "file://$(pwd)/%" -a "Google Chrome.app"

  " <bar> ensures that there are no new line before/after the filename
  nmap <Space>f :redir @f<bar>:echon @%<bar>:redir END<CR>
  nmap <Space>F :redir @*<bar>:echon @%<bar>:redir END<CR>

  vmap <Space>v3 :'<,'>s/[0-9\.\-]\+, \?[0-9\.\-]\+, \?[0-9\.\-]\+, \+/&\r/g<CR>

" Git
  nmap <Space>gf :call OpenFileInGitHub()<CR>
  nmap <Space>gc :call OpenCommitInGitHub()<CR>

  nmap <Space>gb :call BlameGenerate()<CR>
  nmap <Space>gt :call BlameTruncate()<CR>
  nmap <Space>gr :call BlameRemove()<CR>

  function! OpenFileInGitHub()
    let l = line(".")
    let ln = escape("#L".l, "#")
    execute "!open \"https://github.com/hoverinc/$(basename $(pwd))/blob/$(git rev-parse HEAD)/%".ln."\""
  endfunction

  function! OpenCommitInGitHub()
    let l = getline(".")
    let sha = matchstr(l, '^[a-z0-9]\+')
    execute "!open \"https://github.com/hoverinc/$(basename $(pwd))/commit/".sha."\""
  endfunction

  function! BlameGenerate()
    execute "!git blame % > %".".blame"
    execute "vs %".".blame"
  endfunction

  function! BlameTruncate()
    execute "%s/).*$/)/g"
  endfunction

  function! BlameRemove()
    execute "!rm "."%".".blame"
  endfunction

" ==== Other Userful Vim Commands === "

" :tabm # => move the current tabe to #th position

" :scriptnames => show list of sourced scripts

" Enable relative path from the opening file (can cause issue with plug ins)
" set autochdir

" Open file in vertially split window
" :vsp (or :vs) <filename>

" Navigate between windows
" <Ctrl + w> + <Ctrl + l/h>

" Show vim paths
":h runtimepath

" -- cterm-colors --"

" NR-16   NR-8    COLOR NAME
" 0       0       Black
" 1       4       DarkBlue
" 2       2       DarkGreen
" 3       6       DarkCyan
" 4       1       DarkRed
" 5       5       DarkMagenta
" 6       3       Brown, DarkYellow
" 7       7       LightGray, LightGrey, Gray, Grey
" 8       0*      DarkGray, DarkGrey
" 9       4*      Blue, LightBlue
" 10      2*      Green, LightGreen
" 11      6*      Cyan, LightCyan
" 12      1*      Red, LightRed
" 13      5*      Magenta, LightMagenta
" 14      3*      Yellow, LightYellow
" 15      7*      White
