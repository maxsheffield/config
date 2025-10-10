CFLAGS = -Wall -Werror -g -fno-stack-protector
SRC = $(wildcard *.c)
BIN = $(SRC:%.c=%)

all: $(BIN)

%: %.c
	gcc -o $@ $(CFLAGS) $<

clean:
	rm -f $(BIN)
