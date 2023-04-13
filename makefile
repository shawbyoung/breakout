# Makefile for a game

# Executable name
EXECUTABLE = breakout

# Header files
HEADERS = $(wildcard *.h)

# Source files
SOURCES = $(wildcard *.cpp)

# Flags
CXXFLAGS = -std=c++17 -Wconversion -Wall -Werror -Wextra -pedantic

# Set compiler to g++
CXX = g++

game: $(HEADERS) $(SOURCES)
	$(CXX) $(CXXFLAGS) $(HEADERS) $(SOURCES) -o $(EXECUTABLE)

clean:
	rm $(EXECUTABLE)
