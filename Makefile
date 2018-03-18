IDIR=include
CC=gcc
CFLAGS=-g -Wall -I$(IDIR)

ODIR=build
LDIR=lib

LIBS=-lm

DEPS=$(wildcard $(IDIR)/*.h)

SOURCES=$(wildcard src/*.c)
OBJ=$(patsubst src/%.c, $(ODIR)/%.o, $(SOURCES))

TARGET=bin/hellomake

$(TARGET): $(OBJ)
	gcc -o $@ $^ $(CFLAGS) $(LIBS)

$(OBJ): $(ODIR)/%.o: src/%.c $(DEPS) build
	$(CC) -c -o $@ $< $(CFLAGS) $(LIBS)

build:
	@mkdir -p build
	@mkdir -p bin

.PHONY: clean
clean:
	rm -f $(ODIR)/*.o bin/*
