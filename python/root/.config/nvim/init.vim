 "----------------------------------------------------------
" setting for vim editor
"----------------------------------------------------------
" show number
set number
"改行時に自動でインデントする
set autoindent
" use backspace
set backspace=indent,eol,start
 "検索した文字をハイライトする
set hls
" a case-insensitive search
set ignorecase
"  if a pattern contains an uppercase letter, it is case sensitive
set smartcase
" enable Yank and Put
set clipboard=unnamed
" enable mouse
set mouse=a
" escape with jj
inoremap <silent> jj <ESC>
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=4
" when indenting with '>', use 2 spaces width
set shiftwidth=4
" Highlight current line
"set cursorline
" 列を強調表示
"set cursorcolumn
" highlight matching parenthesis
set showmatch
" show status line
set laststatus=2
" set terminal title
set title
" automatically inserts one extra level of indentation in some cases
set smartindent
" Swapファイル？Backupファイル？前時代的すぎ
" なので全て無効化する
set nowritebackup
set nobackup
set noswapfile
" escape select when search some word with esc
noremap <silent> <ESC><ESC> :<C-u>nohlsearch<CR><C-l>
" escape paste mode when leave insert mode
autocmd InsertLeave * set nopaste
" 折り返さない
set nowrap


" keymap setting
 imap <C-p> <Up>
 imap <C-n> <Down>
 imap <C-b> <Left>
 imap <C-f> <Right>
 imap <C-e> <END>
 imap <C-a> <HOME>
 imap <C-d> <Del>
 imap <C-k> <C-r>=<SID>kill()<CR>

 function! s:kill()
   let [text_before, text_after] = s:split_line()
   if len(text_after) == 0
   ¦ normal! J
   else
   ¦ call setline(line('.'), text_before)
   endif
   return ''
 endfunction

 function! s:split_line()
   let line_text = getline(line('.'))
   let text_after  = line_text[col('.')-1 :]
   let text_before = (col('.') > 1) ? line_text[: col('.')-2] : ''
   return [text_before, text_after]
 endfunction

" dein.vimによるプラグイン管理
if &compatible
  set nocompatible
endif

" dein.vimのclone先を指定する
set runtimepath+=/root/.cache/dein/repos/github.com/Shougo/dein.vim

let s:dein_dir = expand('/root/.cache/dein')

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    call dein#load_toml(s:dein_dir . '/dein.toml', {'lazy': 0})
    call dein#load_toml(s:dein_dir . '/lazy.toml', {'lazy': 1})
    call dein#load_toml(s:dein_dir . '/python.toml', {'lazy': 1})

    call dein#end()
    call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif

let g:python3_host_prog = '/usr/bin/python3'

