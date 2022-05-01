vim.g.everforest_better_performance = 1
vim.g.everforest_background = 'hard'
vim.g.everforest_enable_italic = 1

vim.cmd [[
try
  colorscheme everforest
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
