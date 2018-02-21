# vim-searchon-go

### What is does:
1. provides a set of mappings to search for custom text, text under cursor and
   visually selected text;
2. provides search on Google, Youtube;

Mappings:
```c
<leader>sgg -> Searchon Google Go (goes into command mode and waits for input)
<leader>sgw -> Searchon Google Word under cursor
<leader>sg  -> Searchon Google visually selected text
<leader>syg -> Searchon Youtube Go (goes into command mode and waits for input)
<leader>syw -> Searchon Youtube Word under cursor
<leader>sy  -> Searchon Youtube visually selected text
```

Mapping mnemonics:
- first letter (s) stands for "searchon"
- second letter (g, y) indicates the name of the target (ex: Youtube)
- third letter (g, w) stands for "go", word under cursor or (if missing) the
  visually selected words

### What it requires:
1. OSX
2. Google Chrome

### How does it look:
When a search is issued, a new tab is created in Google Chrome and a link with
the specific search query is loaded.

### What is the motivation:
In a vim environment that involves a lot of online text searches (ex: error
messages, function names, etc.) or just to find out a nice song on Youtube to
help with the programming flow :], a mechanism in which a command triggered in
vim goes directly to the target webpage is quite liberating.

So, instead of:
1. copy text in vim
2. open Google Chrome
3. create new tab in Google Chrome
4. navigate to Google
5. paste
6. enter

with vim-searchon-go, the process becomes:
1. select text in vim
2. press \sg

(where "\\" is the default leader key in vim).

### How to install:

Vundle<br/>
`Plugin 'mihaicristiantanase/vim-searchon-go'`

vim-plug<br/>
`Plug 'mihaicristiantanase/vim-searchon-go'`

Pathogen<br/>
`git clone https://github.com/mihaicristiantanase/vim-searchon-go ~/.vim/bundle/vim-husk`
