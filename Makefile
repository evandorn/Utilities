# compiler
CC=clang
# compile flags
CFLAGS=-Wall -Wextra -g -O0 -DNDEBUG
# directory structure
SRCDIR = src
OBJDIR = obj
BINDIR = bin

SOURCES  := $(wildcard $(SRCDIR)/*.c)
INCLUDES := $(wildcard $(SRCDIR)/*.h)
OBJECTS  := $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)

$(OBJECTS): $(OBJDIR)/%.o : $(SRCDIR)/%.c
    @$(CC) $(CFLAGS) -c $< -o $@
    @echo "Compiled "$<" successfully!"

#OBJ=$(addprefix src/, $(SRC:.c=.o))
#BINS=$(add prefix 



clean:
#       rm -f src/
#	rm -f bin/*
	@echo "Cleanup complete!"
	@echo "Object files and executables removed!"$(OBJECTS): $(OBJDIR)/%.o : $(SRCDIR)/%.c
    @$(CC) $(CFLAGS) -c $< -o $
    @echo "Compiled "$<" succesfully!"
