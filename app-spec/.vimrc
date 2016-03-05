" This .vimrc file was created by Vroom-0.37
set nocompatible
syntax on

map <SPACE> :n<CR>:<CR>gg
map <BACKSPACE> :N<CR>:<CR>gg
map R :!vroom -run %<CR>
map RR :!vroom -run %<CR>
map AA :call RunNow()<CR>:<CR>
map VV :!vroom -vroom<CR>
map QQ :q!<CR>
map OO :!open <cWORD><CR><CR>
map EE :e <cWORD><CR>
map !! G:!open <cWORD><CR><CR>
map ?? :e .help<CR>
set laststatus=2
set statusline=%-20f\ App::Spec\ -\ https://github.com/perlpunk/App-Spec-p5

" Overrides from /home/tina/.vroom/vimrc
map OO :!eog <cWORD><CR><CR>
map OV :!mplayer <cWORD><CR><CR>
map OG G?.<CR>0w


" Values from slides.vroom config section. (under 'vimrc')

