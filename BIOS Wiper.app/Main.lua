local comp = require('component')
comp.eeprom.set('return false')
comp.eeprom.setLabel('Wiped BIOS')

computer.shutdown(true) -- reboot
