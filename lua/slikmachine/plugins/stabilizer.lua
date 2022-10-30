
local status, stabilizer = pcall(require, "stabilize")
if not status then
  return
end
require("stabilize").setup()
