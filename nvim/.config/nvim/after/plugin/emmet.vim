"emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,php,blade EmmetInstall
let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
  \    'php' : {
  \        'extends' : 'html',
  \        'filters' : 'html,c',
  \    },
  \ }
