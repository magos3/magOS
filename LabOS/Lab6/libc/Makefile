
src     = $(wildcard *.c)
objs    = $(addprefix $(bindir)/,$(src:.c=.o))

bindir  = ../../bin/libc

INCLUDE += -I../include


all: $(objs)

$(bindir)/%.o:%.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

clean:
	rm -f $(bindir)/*.o
