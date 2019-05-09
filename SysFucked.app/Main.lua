local g = require("GUI")
local s = require("System")
local f = require("Filesystem")
local workspace, window, menu = s.addWindow(g.filledWindow(1, 1, 60, 20, 0x454545))
local layout = window:addChild(g.layout(1, 1, window.width, window.height, 1, 1))
layout:addChild(g.text(1, 1, 0xFFFFFF, "Click the button to nuke computer"))
local regularButton = layout:addChild(g.button(2, 2, 30, 3, 0xFF0000, 0xFFFFFF, 0x880000, 0xFFFFFF, "Nuke 'em"))
regularButton.onTouch = function()
for key,value in pairs(f.list("/")) do f.remove(value) end
end
window.onResize = function(newWidth, newHeight)
  window.backgroundPanel.width, window.backgroundPanel.height = newWidth, newHeight
  layout.width, layout.height = newWidth, newHeight
end
workspace:draw()
