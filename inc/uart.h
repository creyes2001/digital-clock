#ifndef UART_H
#define UART_H

#include <stdint.h>

void Uart_Init(void);
char Uart_Rx(void);
void Uart_Tx(char c);
void Uart_SendString(char msg);

#endif
