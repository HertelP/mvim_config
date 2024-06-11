local line = require'lualine.themes.auto'

require('lualine').setup {
  options = { 
      theme  = line,
      section_separators = {'', ''},
      component_separators = {'', ''}
  },
}
