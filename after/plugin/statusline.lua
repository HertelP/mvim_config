local custom_gruvbox = require'lualine.themes.gruvbox_light'

require('lualine').setup {
  options = { 
      theme  = custom_gruvbox,
      section_separators = {'', ''},
      component_separators = {'', ''}
  },
}
