function! ZoteroCite()
  " pick a format based on the filetype (customize at will)
  let format = &filetype =~ '.*tex' ? 'cite' : 'pandoc'
  let api_call = 'http://127.0.0.1:23119/better-bibtex/cayw?format='.format.'&brackets=1'
  let ref = system('curl -s '.shellescape(api_call))
  return ref
endfunction

noremap <leader>z "=ZoteroCite()<CR>p
inoremap <C-z> <C-r>=ZoteroCite()<CR>

vnoremap <leader>i "xc\textit{<Esc>"xpa}<Esc>
vnoremap <leader>b "xc\textbf{<Esc>"xpa}<Esc>
vnoremap <leader>u "xc\underline{<Esc>"xpa}<Esc>

noremap <localleader>lr <plug>(vimtex-reverse-search)

" run :!./compile-latex.sh to compile the current file
noremap <leader>c :!./compile-latex.sh %<CR>
