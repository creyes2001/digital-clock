#include "eeprom.h"
#include <xc.h>

void EEPROM_WriteByte(uint8_t address, uint8_t data)
{
	uint8_t gie_state = INTCONbits.GIE;

	EEADR = address;
	EEDATA = data;

	EECON1bits.EEPGD = 0;
	EECON1bits.CFGS = 0;
	EECON1bits.WREN = 1;

	INTCONbits.GIE = 0;

	EECON2 = 0x55;
	EECON2 = 0xAA;

	EECON1bits.WR = 1;

	INTCONbits.GIE = gie_state;

	while(EECON1bits.WR);

	EECON1bits.WREN = 0;
}

uint8_t EEPROM_ReadByte(uint8_t address)
{
    EEADR = address;

    EECON1bits.EEPGD = 0;
    EECON1bits.CFGS = 0;

    EECON1bits.RD = 1;

    return EEDATA;
}
