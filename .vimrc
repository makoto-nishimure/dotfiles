" ファイルエンコード
set fileencodings=euc-jp,utf-8
" 通常使う文字エンコーディング
set fileencoding=utf-8
scriptencoding utf-8
" 行番号の表示
set number
" 自動インデントで各段階に使われる空白の数
set shiftwidth=4
" タブの大きさを4
set tabstop=4
" 対応括弧をハイライト
set showmatch
" 新しい行を開始した時に新しい行のインデントを現在の行と同じ量にする
" set autoindent
" 新しい行を作った時に高度な自動インデントを行う
set smartindent
" タブ文字の表示 ^I で表示される
"set list
" カーソルラインの有効化
set cursorline
" 関数等を折り畳む
set foldmethod=syntax

" execute pathogen#infect()
" filetype plugin indent on

augroup highlightIdeographicSpace
	au!
	au ColorScheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=DarkGreen
	au VimEnter,WinEnter * match IdeographicSpace /　/
augroup END

syntax on
colorscheme molokai 

filetype on
filetype indent on

augroup fileType
	au!
	au BufRead,BufNewFile *.py setlocal expandtab
augroup END
