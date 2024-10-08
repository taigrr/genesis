CC = gcc
CFLAGS = -Wall -std=c11

# Include paths
INCLUDE = -I/opt/homebrew/include

# Library paths and libraries
LIBPATH = -L/opt/homebrew/lib
LIBS = -lglfw -lGLEW -lcglm -framework OpenGL -framework Cocoa -framework IOKit

all: main

main: main.c
	$(CC) $(CFLAGS) main.c -o main $(INCLUDE) $(LIBPATH) $(LIBS)

clean:
	rm -f main
