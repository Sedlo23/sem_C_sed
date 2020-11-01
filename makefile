

OUTDIR = bin

DIR_SRC = src

DIR_BASE = base

DIR_STRU = structures

DIR_DATA = data

CC = gcc

OUTPUT = lips

LINUX =.o

WIN =.exe



debug_linux: $(DIR_SRC)/$(DIR_BASE)/main.c   
	$(CC) $(DIR_SRC)/$(DIR_BASE)/main.c -o $(OUTDIR)/$(OUTPUT)$(LINUX)

debug_win: $(DIR_SRC)/$(DIR_BASE)/main.c   
	$(CC) $(DIR_SRC)/$(DIR_BASE)/main.c -o $(OUTDIR)/$(OUTPUT)$(WIN)
	
run_linux: 
	$(OUTDIR)/$(OUTPUT)$(LINUX)
	
leak: debug_linux
	valgrind --tool=memcheck $(OUTDIR)/$(OUTPUT)$(LINUX)

	


