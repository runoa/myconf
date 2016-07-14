
" プラグイン管理Dein.vim
if &compatible
  set nocompatible
endif
set runtimepath^=~/.config/nvim/repos/github.com/Shougo/dein.vim
call dein#begin('~/.config/nvim/')
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/vimshell.vim')
call dein#add('Shougo/vimfiler.vim')
call dein#add('Shougo/neosnippet-snippets.git')
call dein#end()
filetype plugin indent on

" 設定の再読み込み
nmap <space>ss :source ~/.config/nvim/init.vim<cr>

" ファイルタイプ
filetype on        " 自動で認識させる
filetype indent on " ファイルに応じてインデントする

" 表示に関する設定
set number " 行表示
set ruler  " 右下にルーラーを表示
set list   " 不可視文字の表示
set listchars=tab:^\ ,trail:$ " 不可視文字の表示方法。タブを^,末尾のスペースを$表示

" カーソル行列の背景色を青に変更
" 行番号も一緒に塗る
set cursorline
set cursorcolumn
highlight CursorLine ctermbg=4
highlight CursorColumn ctermbg=4
highlight CursorLineNr ctermbg=4 ctermfg=8

" ファイル関連の設定
set hidden   " 保存されていないファイルがあるときでも他のファイルを開ける
set autoread " 外部でファイルに変更があったときは読み込み直す
"" C-Sで保存できるようにする
imap <c-s> <esc>:w<cr>
nmap <c-s> :w<cr>

" 検索の設定
set ignorecase " 大文字と小文字を区別しない
set smartcase  " 大文字と小文字が混在する文字列で検索した時のみ区別する

" インデントの設定
" http://machakann.hatenablog.com/entry/2015/08/15/132247
set cindent      " 優先度1: C言語向けのインデント
set smartindent  " 優先度2: C言語風のインデント
set autoindent   " 優先度3: 自動インデント
set expandtab    " タブをスペースに置き換える
set tabstop=4    " タブを何文字分で表示するか
set shiftwidth=4 " タブを入力したときに入るスペースの数

" その他の編集設定
nnoremap U <c-r> " Uでやり直し
set pastetoggle=<c-v> " 貼り付けモードのトグルを<C-E>でできるようにする
set matchpairs& matchpairs+=<:> " <>の組み合わせでもハイライトさせる
set fileencodings=utf-8,euc-jp,iso-2022-jp-3,iso-2022-jp,euc-jisx0213,ucs-bom,eucjp-ms,cp932

" ステータスバーの設定
" set statusline=%F%m%r%h%w\ %{fugitive#statusline()}%=\ %Y,\ %{&fileencoding},\ %l/%L]
set statusline=%F%m%r%h%w\ =\ %Y,\ %{&fileencoding},\ %l/%L]

" カーソル移動
" 実際の行ではなく見えてる行の単位でスクロールする
" JKで半画面スクロールする
" HLで単語単位で左右に移動する
" weで行頭、行末に移動する
nmap j gj
nmap k gk
nmap J <c-d>
nmap K <c-u>
nmap H b
nmap L w
nmap w ^
nmap e $
set scrolloff=8               " 上下の領域を確保した上でスクロールさせる
set whichwrap=b,s,h,l,<,>,[,] " 行頭行末の左右移動でまたぐ

" Emacsキーバインド
imap <c-f> <right>
imap <c-b> <left>
imap <c-p> <up>
imap <c-n> <down>
imap <c-a> <home>
imap <c-e> <end>
imap <c-d> <del>
imap <c-h> <bs>

" 括弧を補完する
imap {F {}<LEFT>
imap [F []<LEFT>
imap (F ()<LEFT>
imap <F <><LEFT>
imap "F ""<LEFT>
imap 'F ''<LEFT>
imap {J {}<LEFT>
imap [J []<LEFT>
imap (J ()<LEFT>
imap <J <><LEFT>
imap "J ""<LEFT>
imap 'J ''<LEFT>
imap {<c-j> {}<LEFT>
imap [<c-j> []<LEFT>
imap (<c-j> ()<LEFT>
imap <<c-j> <><LEFT>
imap "<c-j> ""<LEFT>
imap '<c-j> ''<LEFT>
imap {<Nul> {}<LEFT>
imap [<Nul> []<LEFT>
imap (<Nul> ()<LEFT>
imap <<Nul> <><LEFT>
imap "<Nul> ""<LEFT>
imap '<Nul> ''<LEFT>

" 括弧に加えてセミコロンも補完する
imap {+ {};<LEFT><LEFT>
imap [+ [];<LEFT><LEFT>
imap (+ ();<LEFT><LEFT>
imap <+ <>;<LEFT><LEFT>
imap "+ "";<LEFT><LEFT>
imap '+ '';<LEFT><LEFT>

" エンコーディングを変更して開き直す
nmap <space>me :e ++enc=euc-jp<cr>
nmap <space>ms :e ++enc=shift_jis<cr>
nmap <space>mu :e ++enc=utf-8<cr>

" ウィンドウの分割設定
nmap <space>wk :sp<cr>
nmap <space>wh :vs<cr>
nmap <space>wl :vs<cr><c-w>l
nmap <space>wj :sp<cr><c-w>j

" ウィンドウ間の移動
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l
nmap Wh <c-w>h
nmap Wl <c-w>l
nmap Wj <c-w>j
nmap Wk <c-w>k

" ウィンドウの大きさの変更
nmap <space>w0 <c-w>=
nmap ] 5<c-w>+
nmap } 5<c-w>-
nmap [ 5<c-w>>
nmap { 5<c-w><

source ~/myconf/nvim/neocomplete.vim

