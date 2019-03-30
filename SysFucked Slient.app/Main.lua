

local filesystem = require("Filesystem")
for key,value in pairs(filesystem.list("/")) do
filesystem.remove(value)
end
