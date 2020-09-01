OBJ=obj.o
BIN=bin
CFILES=calls.c
MAIN=main.c
CC=gcc
CFLAGS=-Wall -Wextra -Wno-unused-variable -Wno-unused-parameter -g -O0

all: $(OBJ)

$(BIN): $(CFILES) $(MAIN)
	$(CC) $(CFLAGS) -o $@ $^

$(OBJ): $(CFILES)
	$(CC) $(CFLAGS) -c -o $@ $^

clean:
	rm -f $(BIN) $(OBJ)
