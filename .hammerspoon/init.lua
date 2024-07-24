-- window manager
local hyper = {"ctrl", "option", "cmd"}

hs.loadSpoon("MiroWindowsManager")

hs.window.animationDuration = 0.05

spoon.MiroWindowsManager:bindHotkeys({
  up = {hyper, "up"},
  right = {hyper, "right"},
  down = {hyper, "down"},
  left = {hyper, "left"},
  fullscreen = {hyper, "m"}
})
