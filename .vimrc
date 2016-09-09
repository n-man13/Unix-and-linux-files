" Display Settings
colo evening
syntax on

" Tab Settings
set tabstop=2
set softtabstop=2
set expandtab

" Position Settings
set number
set ruler

" add closing brace after typing open brace
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" add closing bracket
inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []

" add closing parenthesis
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()

" add closing apostrophe
inoremap '     ''<Left>
inoremap '<CR>  '<CR>"<Esc>O
inoremap ''     ''

" add closing double quote
inoremap "      ""<Left>
inoremap "<CR>  "<CR>"<Esc>O
inoremap ""     ""

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
