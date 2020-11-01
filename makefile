

OUTDIR = bin

DIR_SRC = src

DIR_BASE = base

DIR_STRU = structures

DIR_DATA = data

CC = gcc

OUTPUT = lips

LINUX =.o

WIN =.exe

objects = $(DIR_SRC)/$(DIR_BASE)/main.c $(DIR_SRC)/$(DIR_STRU)/list.o



debug_linux: 
	$(CC) $(objects) -o $(OUTDIR)/$(OUTPUT)$(LINUX)

debug_win: 
	$(CC) $(objects) -o $(OUTDIR)/$(OUTPUT)$(WIN)
	
run_linux: 
	$(OUTDIR)/$(OUTPUT)$(LINUX)
	
leak: debug_linux
	valgrind --tool=memcheck $(OUTDIR)/$(OUTPUT)$(LINUX)

	


