local status, cmp = pcall(require, "nvim-cmp")
if not status then
  print('no cmp loaded')
  return
end


local cmp = require'cmp'
cmp.setup()



