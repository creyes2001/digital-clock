#ifndef UART_H
#define UART_H

#include <stdint.h>
#include <stdbool.h>
#include "gpio.h"

typedef struct
{
	gpio_t *rx;
	gpio_t *tx;
	uint32_t baud_rate;
}uart_config_t;


void Uart_Init(const uart_config_t *uart);
void Uart_Start(const uart_config_t *uart);
void Uart_Stop(void);
void Uart_Tx(char c);
void Uart_TxTask(void);
void Uart_InterruptHandler(void);
bool Uart_Read(char *data);
void Uart_SendString(const char *msg);

#endif
