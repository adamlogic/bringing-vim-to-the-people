" make it easy to modify configuration
  :nmap ,s :source ~/.vimrc<cr>
  :nmap ,v :tabe ~/.vimrc<cr>
  
" display file browser
  :nmap <F2> :NERDTreeToggle<cr>

" tag list
  :nmap <F3> :TlistToggle<cr>
  :nmap ,a ::TlistAddFilesRecursive app<cr>TlistAddFilesRecursive lib<cr>TlistAddFilesRecursive public/stylesheets<cr>

" execute shell command
  :nmap ,sh :Shell 

" run current spec
  :nmap ,sf :Shell script/spec -fn %<cr>

" run current ruby file
  :nmap ,st :Shell ruby %<cr>
  
" get out of insert mode with cmd-i
  :imap <D-i> <Esc>

" redo with U
  :nmap U :redo<cr>

" easy wrap toggling
  :nmap ,r :set wrap<cr>
  :nmap ,R :set nowrap<cr>

" delete all buffers
  :nmap ,bd :1,9999bd

" irb goodness
  autocmd FileType irb inoremap <buffer> <silent> <Cr> <Esc>:<C-u>ruby v=VIM::Buffer.current;v.append(v.line_number, eval(v[v.line_number]).inspect)<Cr>
  nnoremap ,irb :<C-u>below new<Cr>:setfiletype irb<Cr>:set syntax=ruby<Cr>:set buftype=nofile<Cr>:set bufhidden=delete<Cr>i

" Textmate Fuzzy Finder - ,t to launch; cmd-enter to open selected file in new tab
  let g:FuzzyFinderOptions = { 'Base':{}, 'Buffer':{}, 'File':{}, 'Dir':{}, 'MruFile':{}, 'MruCmd':{}, 'FavFile':{}, 'Tag':{}, 'TaggedFile':{}}
  let g:FuzzyFinderOptions.Base.key_open_tab = '<D-CR>'
  :nmap ,t :FuzzyFinderTextMate<CR> 

