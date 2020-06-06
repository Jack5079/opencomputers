local comp = require('component')
comp.eeprom.set('-- Wiped BIOS')
comp.eeprom.setLabel('Wiped BIOS')

computer.shutdown(true) -- reboot
