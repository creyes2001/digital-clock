#ifndef BUFFER_H
#define BUFFER_H

#include <stdint.h>
#include <stdbool.h>
#define BUFFER_SIZE 10

char RingBuffer[BUFFER_SIZE];

typedef struct
{
	uint8_t head;
	uint8_t tail;
	bool IsEmpty;
	bool IsFull;
}buffer_t;

void Buffer_Init(buffer_t *buffer);
void Buffer_Add(buffer_t *buffer,char element);
char Buffer_Get(buffer_t *buffer);


#endif
