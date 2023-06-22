CC := g++
CFLAGS := $(shell pkg-config --cflags libnotify)
LIBS := $(shell pkg-config --libs libnotify)

TARGET := main.out
SRCS := src/main.cc

all: $(TARGET)

$(TARGET): $(SRCS)
	$(CC) $(SRCS) -o $(TARGET) $(CFLAGS) $(LIBS)

clean:
	rm -f $(TARGET)
