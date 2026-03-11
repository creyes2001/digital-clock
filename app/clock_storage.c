#include "eeprom.h"
#include "clock_storage.h"

#define CLOCK_SIGNATURE_ADDR	0x00
#define CLOCK_HOURS_ADDR 		0x01
#define CLOCK_MINUTES_ADDR		0x02
#define CLOCK_SECONDS_ADDR		0x03
#define CLOCK_SIGNATURE_VALUE	0xA5

void ClockStorage_Init(uint8_t *h ,uint8_t *m, uint8_t *s)
{
	if(EEPROM_ReadByte(CLOCK_SIGNATURE_ADDR) != CLOCK_SIGNATURE_VALUE)
	{
		*h = 12;
		*m = 0;
		*s = 0;

		ClockStorage_SaveTime(*h, *m, *s);

		EEPROM_WriteByte(CLOCK_SIGNATURE_ADDR, CLOCK_SIGNATURE_VALUE);
	}
	else
	{
		*h = EEPROM_ReadByte(CLOCK_HOURS_ADDR);
		*m = EEPROM_ReadByte(CLOCK_MINUTES_ADDR);
		*s = EEPROM_ReadByte(CLOCK_SECONDS_ADDR);
	}
}

void ClockStorage_SaveTime(uint8_t hours, uint8_t minutes, uint8_t seconds)
{
	EEPROM_WriteByte(CLOCK_HOURS_ADDR,hours);
	EEPROM_WriteByte(CLOCK_HOURS_ADDR,minutes);
	EEPROM_WriteByte(CLOCK_SECONDS_ADDR,seconds);
}

