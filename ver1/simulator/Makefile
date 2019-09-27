CC = g++
CFLAGS = -Wall -o
SRCS = $(shell find . -name "*.cc")
OBJS = $(SRCS:.cc=.o)

TARGET = simulator

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS)  $@ $^

clean:
	rm $(TARGET) $(OBJS) 
