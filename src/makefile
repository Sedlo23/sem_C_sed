
TARGET = Lips
OUTDIR = ./bin
DATADIR = ./data
DIR_BASE = ./semihost
DIR_STRUCT = ./obj

CC = gcc


.PHONY: clean

$(TARGET): clean $(objects)
    $(CC) -o $(OUTDIR)/$(TARGET) $(objects)

kmusb.o: kmusb.c ./semihost/usb_semihost.h ./arg_parser/arg_parser.h
    $(CC) -I./semihost -I./arg_paser -c kmusb.c

virtual_com.o: virtual_com.c virutual_com.h
    $(CC) -c virtual_com.c

arg_parser.o: ./arg_parser/arg_parser.c ./arg_parser/arg_parser.h
    $(CC) -c ./arg_parser/arg_parser.c

usb_semihost.o: ./semihost/usb_semihost.c ./semihost/usb_semihost.h
    $(CC) -c ./semihost/usb_semihost.c

clean:
    rm -rf $(OUTDIR)/* $(DATADIR)/* *.o
