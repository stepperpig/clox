CC = gcc
CFLAGS = -g -Wall -Wextra -pedantic
DEPS = chunk.h common.h debug.h memory.h 
OBJ = main.o chunk.o debug.o memory.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

main: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: clean

clean:
	rm -f *.o *~ core *~
