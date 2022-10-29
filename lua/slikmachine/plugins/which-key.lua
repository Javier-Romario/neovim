local status, whichkey = pcall(require, "which-key")
if not status then
  print  "no which key :("
  return
end

require("which-key").setup {
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
  }
}
