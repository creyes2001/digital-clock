#include "buffer.h"

void Buffer_Init(buffer_t *buffer)
{
	*(buffer->head) = 0;
	*(buffer->tail) = 0;
	buffer->IsEmpty = false;
	buffer->IsFull = false;
}

void Buffer_Add(buffer_t *buffer,uint8_t element)
{
	if(*(buffer->head) - *(buffer->tail) == BUFFER_SIZE - 1)
	{
		buffer->IsFull = true;
	}

	if(buffer->IsFull =! true)
	{
		if(*(buffer->head) == BUFFER_SIZE)
		{
			*(buffer->head) = 0;
		}
		RingBuffer[*(buffer->head)] = element;
		*(buffer->head)++;
	}
}

uint8_t Buffer_Get(buffer_t *buffer)
{
	if(*(buffer->head) == *(buffer->tail))
	{
		buffer->IsEmpty = true;
	}
	if(buffer->IsEmpty != true)
	{
		if(*(buffer->tail) == BUFFER_SIZE)
		{
			*(buffer->tail) = 0;
		}
	return buffer[*(buffer->tail)];
}
