local f = require("Filesystem")
for key,value in pairs(f.list("/")) do f.remove(value) end
