#ifndef BUFFER_H
#define BUFFER_H

#include <stdio.h>
#include <stdbool.h>
#define BUFFER_SIZE 10

uint8_t RingBuffer[BUFFER_SIZE];

typedef struct
{
	uint8_t *head;
	uint8_t *tail;
	bool IsEmpty;
	bool IsFull;
}buffer_t;

void Buffer_Init(buffer_t *buffer);
void Buffer_Add(buffer_t *buffer,uint8_t element);
uint8_t Buffer_Get(buffer_t *buffer);


#endif
