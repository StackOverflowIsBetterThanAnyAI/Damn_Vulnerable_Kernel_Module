CC = gcc
CFLAGS = -Wall -Wextra -g
LDFLAGS =

TARGETS = test_dvkm dvkm

all: $(TARGETS)

test_dvkm: test_dvkm.o
	$(CC) $(LDFLAGS) -o $@ $^

dvkm: dvkm.o
	$(CC) $(LDFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(TARGETS) *.o
