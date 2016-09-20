" vimrc for til
" source: https://github.com/jbranchaud/til

" In order for this file to be loaded by Vim, the main `.vimrc` file must
" contain `set exrc` and optionally `set secure`. Without those lines, Vim
" will ignore this file.

function! CountTils()
  execute '%s/^- \[//n'
endfunction

nnoremap <leader>c :call CountTils()<cr>
