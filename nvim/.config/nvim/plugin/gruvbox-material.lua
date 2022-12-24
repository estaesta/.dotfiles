vim.cmd([[
    " Important!!
    if has('termguicolors')
      set termguicolors
    endif
    " For dark version.
    set background=dark
    " For light version.
    " set background=light
    " Set contrast.
    " This configuration option should be placed before `colorscheme gruvbox-material`.
    " Available values: 'hard', 'medium'(default), 'soft'
    let g:gruvbox_material_ui_contrast = 'high'
    let g:gruvbox_material_visual = 'reverse'
    let g:gruvbox_material_foreground = 'original'
    let g:gruvbox_material_transparent_background = 1
    let g:gruvbox_material_background = 'hard'
    let g:gruvbox_material_diagnostic_text_highlight = 1
    " let g:gruvbox_material_diagnostic_line_highlight = 1
    " For better performance
    let g:gruvbox_material_better_performance = 1
    colorscheme gruvbox-material
]])