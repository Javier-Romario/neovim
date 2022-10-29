local status, lualine = pcall(require, "lualine")
if not status then
  print('lualine not loaded')
  return
end

require('lualine').setup({
  options = {
    theme = "material"
  }
})
