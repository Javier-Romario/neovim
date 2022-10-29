local status, _ = pcall(vim.cmd, "colo tokyonight-storm")
if not status then
  print("Colorscheme not installed")
  return
end
  
