CC=g++
CFLAGS=-c -Wall
LDFLAGS=-lblas
SOURCES=main.cpp matrix_operations.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=makefile_blas

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@

main.o: main.cpp matrix_operations.h
	$(CC) $(CFLAGS) main.cpp

matrix_operations.o: matrix_operations.cpp matrix_operations.h
	$(CC) $(CFLAGS) matrix_operations.cpp

clean:
	rm -rf *o $(EXECUTABLE)
