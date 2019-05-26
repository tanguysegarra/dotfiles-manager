" Basic config "

syntax on
set number
set autoindent
set colorcolumn=81
set mouse=a
set encoding=utf-8
set tabstop=8
set shiftwidth=8
set noexpandtab
set noswapfile
colo ron

" Useful autocomplete matching chars"

inoremap {  {}<Left><Return><Esc>O
inoremap {{ {
inoremap {} {}

inoremap (  ()<Left>
inoremap () ()
inoremap (( (

inoremap "  ""<Left>
inoremap "" ""

inoremap '  '
inoremap '' ''<Left>
inoremap ''' ''

inoremap <  ><Left><
inoremap << <<
inoremap <<Space> <<Space>
inoremap <=  <=

inoremap [  []<Left>
inoremap [] []
inoremap [[ [

" Because I type wayyy to often "

inoremap #inc #include

