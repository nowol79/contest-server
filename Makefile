CC=gcc
CFLAGS=-I.
LDFLAGS=-lpthread
DEPS = contest.h
OBJ = contest.o client.o error.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

contest: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)

clean:
	rm -f contest contest.o client.o error.o
