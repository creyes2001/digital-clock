#include "buffer.h"

void Buffer_Init(buffer_t *buffer)
{
	buffer->head = 0;
	buffer->tail = 0;
	buffer->IsEmpty = false;
	buffer->IsFull = false;
}

void Buffer_Add(buffer_t *buffer,uint8_t element)
{
		if(!buffer->IsFull)
      {
          RingBuffer[buffer->head] = element;
          buffer->head++;
      }
      if(buffer->head == BUFFER_SIZE)
      {
          buffer->head = 0;
      }
  
      if(buffer->head - buffer->tail >= BUFFER_SIZE)
      {
          buffer->IsFull = true;
      }
  
      if(buffer->IsEmpty && (buffer->head != buffer->tail))
      {
          buffer->IsEmpty = false;
      }
}

uint8_t Buffer_Get(buffer_t *buffer)
{
	uint8_t tail_temp;

     if(!buffer->IsEmpty)
     {
         tail_temp = RingBuffer[buffer->tail];
         buffer->tail++;
     }

     if(buffer->tail == BUFFER_SIZE)
     {
         buffer->tail = 0;
     }

     if(buffer->head == buffer->tail)
     {
         buffer->IsEmpty = true;
     }

     if(buffer->IsFull && (buffer->head != buffer->tail))
     {
         buffer->IsFull = false;
     }
     return tail_temp;
}
