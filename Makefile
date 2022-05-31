CC = arm-none-eabi-gcc
CFLAGS = -c -mcpu=cortex-m4 -mthumb

all: startup.o main.o

%.o: %.c
	$(CC) $(CFLAGS) -o $@ $^
clean: 
	rm -f *.o