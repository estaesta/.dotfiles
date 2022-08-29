  local home = os.getenv('HOME')
  local db = require('dashboard')
  -- linux
  -- db.preview_command = 'ueberzug'
  --
  -- db.preview_file_path = home .. '/.config/nvim/static/neovim.cat'
  -- db.preview_file_height = 12
  -- db.preview_file_width = 80
  db.default_banner = {
'',
'⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠔⠂⢉⠉⠉⢉⠋⢉⠒⠶⢤⣀⠀⠀⠀⠀⠀⠀⠀⠀',
'⠀⠀⠀⠀⠀⠀⢀⢔⠍⢀⠄⢈⠅⠀⢀⠁⠁⠐⠰⣤⠁⠻⣳⣄⠀⠀⠀⠀⠀⠀',
'⠀⠀⠀⠀⠀⡴⠇⠠⠈⠀⡔⡑⢁⠢⠆⠘⠀⢀⠀⡇⣧⢧⣀⠙⢦⠀⠀⠀⠀⣀',
'⠀⠀⠀⢀⢜⠁⡠⣠⢊⡌⡰⠀⡜⢃⠀⡇⠀⠘⠀⢀⢸⡎⢾⡣⠈⢆⣠⣾⣿⣿',
'⠀⣀⣴⡽⠁⣠⣰⢃⡜⢰⡇⢸⡓⣮⠀⠃⢠⢹⠀⢯⠸⠸⡄⢣⢆⣼⣿⣿⣿⠇',
'⠀⣠⡪⢲⣋⠋⡏⡰⡇⣸⡇⣾⣇⣹⢸⠀⡘⡇⣸⣸⣼⠁⣧⣿⢸⣿⣿⣿⣿⠀',
'⠈⠑⠋⣹⠋⢬⡄⠧⣇⣇⣟⣇⢿⠙⣼⡀⣟⢴⢸⢿⡇⡜⣼⡿⢸⣿⣿⣿⣿⠀',
'⠀⠀⢀⢃⣾⢏⢎⢢⣯⡛⠛⠿⠟⠕⡟⣯⡯⣾⣿⣜⡗⣹⢹⠃⡌⢧⢻⣿⣿⡄',
'⠀⠀⢸⠞⣿⡿⠹⣦⡳⡀⠀⠀⠀⠀⠡⠀⠙⠛⠿⠉⢻⢓⠟⢠⢽⡈⣿⣿⡏⠁',
'⠀⠀⠀⠀⣻⣁⠆⠹⡛⠑⢀⡀⠀⠀⠰⠀⠀⠀⠀⠀⣸⢸⡆⢫⣸⣿⢿⣏⠀⠀',
'⠀⠀⠀⠀⠽⠋⠀⢠⣜⣆⠀⠑⠀⠀⠀⠄⠀⠀⢀⣴⢹⢻⠸⠞⠁⢸⠀⣿⡄⠀',
'⠀⠀⠀⠀⠀⠀⠀⢼⠛⡏⠳⣄⠁⠀⣀⣠⣴⡾⠓⠈⠁⠈⠑⡄⠀⢸⠀⠻⡇⠀',
'⠀⠀⠀⠀⠀⠀⠀⠀⢀⠼⣷⣶⣤⣴⣷⣿⠏⠀⠀⠀⠀⠀⠀⢹⠀⣸⠀⠀⠀⠀',
'⠀⣀⠤⠤⠀⠐⠒⠪⢀⣀⣰⡏⡉⠑⢡⡽⠀⠀⠀⠀⠀⠀⠀⠀⣶⠿⠀⠀⠀⠀',
'⡊⠀⠀⠀⠀⠀⠀⠀⠀⣰⡏⠀⠀⡠⠃⡇⠀⢠⠀⠀⠀⠀⠀⠀⢣⠀⠀⠀⠀⠀',
'',
  }
  db.custom_center = {
      {icon = '  ',
      desc = 'Recently latest session                  ',
      shortcut = '       ',
      action ='SessionLoad'},
      {icon = '  ',
      desc = 'Recently opened files                   ',
      action =  'Telescope oldfiles',
      shortcut = '       '},
      {icon = '  ',
      desc = 'Find  File                              ',
      action = 'Telescope find_files find_command=rg,--hidden,--files',
      shortcut = 'SPC f f'},
      {icon = '  ',
      desc ='File Browser                            ',
      action =  'NvimTreeOpen',
      shortcut = 'SPC e   '},
      {icon = '  ',
      desc = 'Find  word                              ',
      action = 'Telescope live_grep',
      shortcut = 'SPC f g'},
      {icon = '  ',
      desc = 'Open Personal dotfiles                  ',
      action = 'Telescope dotfiles path=' .. home ..'/.dotfiles',
      shortcut = 'SPC f d'},
    }
