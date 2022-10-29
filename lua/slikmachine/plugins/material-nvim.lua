local status, material = pcall(require, "material")
if not status then
  return
end

require('material').setup({
  lualine_style = 'stealth' -- the stealth style
})
