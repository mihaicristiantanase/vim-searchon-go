" OSX only, for now
"

" Search on generic target with 'osascript'
fun! SearchOnFun(target, ...)
  let q = join(a:000, ' ')
  if a:target == 'google'
    let url = "https://www.google.ro/search?q=" . q
  elseif a:target == 'youtube'
    let url = "https://www.youtube.com/results?search_query=" . q
  endif
  let cmd = 'tell app "Google Chrome" to launch open location "'. url . '" activate'
  silent! exe "!osascript -e '" . cmd . "'"
  silent! redraw!
endfun

command! -nargs=1 SearchOnGoogle call SearchOnFun('google', <f-args>)
nnoremap <leader>sgg :SearchOnGoogle<Space>
nnoremap <leader>sgw :SearchOnGoogle <cword><CR>
vnoremap <leader>sg y:SearchOnGoogle <C-r>*<CR>

command! -nargs=1 SearchOnYoutube call SearchOnFun('youtube', <f-args>)
nnoremap <leader>syg :SearchOnYoutube<Space>
nnoremap <leader>syw :SearchOnYoutube <cword><CR>
vnoremap <leader>sy y:SearchOnYoutube <C-r>*<CR>
