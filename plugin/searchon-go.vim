" OSX only, for now
"

" Search on generic target with 'osascript'
fun! SearchOnFun(target, ...)
  let q = join(a:000, ' ')
  if a:target == 'duckduckgo'
    let url = "https://duckduckgo.com/?q=" . q
  elseif a:target == 'google'
    let url = "https://www.google.ro/search?q=" . q
  elseif a:target == 'youtube'
    let url = "https://www.youtube.com/results?search_query=" . q
  endif
  echom 'url = ' . url
  exe "!open '" . url . "'"
  silent! redraw!
endfun

command! -nargs=1 SearchOnDuckDuckGo call SearchOnFun('duckduckgo', <f-args>)
nnoremap <leader>sdg :SearchOnDuckDuckGo<Space>
nnoremap <leader>sdw :SearchOnDuckDuckGo <cword><CR>
vnoremap <leader>sd y:SearchOnDuckDuckGo <C-r>"<CR>

command! -nargs=1 SearchOnGoogle call SearchOnFun('google', <f-args>)
nnoremap <leader>sgg :SearchOnGoogle<Space>
nnoremap <leader>sgw :SearchOnGoogle <cword><CR>
vnoremap <leader>sg y:SearchOnGoogle <C-r>"<CR>

command! -nargs=1 SearchOnYoutube call SearchOnFun('youtube', <f-args>)
nnoremap <leader>syg :SearchOnYoutube<Space>
nnoremap <leader>syw :SearchOnYoutube <cword><CR>
vnoremap <leader>sy y:SearchOnYoutube <C-r>"<CR>
