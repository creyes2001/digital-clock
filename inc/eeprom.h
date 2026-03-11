#ifndef EEPROM_H
#define EEPROM_H

#include <stdint.h>

uint8_t EEPROM_ReadByte(uint8_t address);
void EEPROM_WriteByte(uint8_t address, uint8_t data);

#endif //EEPROM_H
