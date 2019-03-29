
-- Import libraries
local GUI = require("GUI")
local system = require("System")
local filesystem = require("Filesystem")

---------------------------------------------------------------------------------

-- Add a new window to MineOS workspace
local workspace, window, menu = system.addWindow(GUI.filledWindow(1, 1, 60, 20, 0x000000))



-- Add single cell layout to window
local layout = window:addChild(GUI.layout(1, 1, window.width, window.height, 1, 1))

-- Add nice gray text object to layout
layout:addChild(GUI.text(1, 1, 0xFFFFFF, "Click the button to nuke computer"))
local regularButton = layout:addChild(GUI.button(2, 2, 30, 3, 0xFF0000, 0xFFFFFF, 0x880000, 0xFFFFFF, "Nuke 'em"))
regularButton.onTouch = function()
local deader = filesystem.list("/")
local y = 3
for key,value in pairs(deader) do
layout:addChild(GUI.text(1, y, 0x4B4B4B, "Deleting " .. value .. "..."))
filesystem.remove(value)
end
end
-- Create callback function with resizing rules when window changes its' size
window.onResize = function(newWidth, newHeight)
  window.backgroundPanel.width, window.backgroundPanel.height = newWidth, newHeight
  layout.width, layout.height = newWidth, newHeight
end

---------------------------------------------------------------------------------

-- Draw changes on screen after customizing your window
workspace:draw()
