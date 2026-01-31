#ifndef UART_H
#define UART_H

#include <stdint.h>
#include "gpio.h"

typedef struct
{
	gpio_t rx;
	gpio_t tx;
	uint32_t baud_rate;
}uart_config_t;


void Uart_Init(uart_config_t *uart);
void Uart_Start(uart_config_t *uart);
void Uart_Stop(uart_config_t *uart);
char Uart_Rx(void);
void Uart_Tx(char c);
void Uart_SendString(char msg);

#endif
