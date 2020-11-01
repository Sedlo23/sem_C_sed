

OUTDIR = bin

DIR_SRC = src

DIR_BASE = base

DIR_STRU = structures

DIR_DATA = data

CC = gcc

OUTPUT = lips

LINUX =.o

WIN =.exe

CMD_INPUT=""

FLAGS = -std=c99 -I $(DIR_SRC)/$(DIR_STRU)

main =  $(DIR_SRC)/$(DIR_BASE)/main.c
list = $(DIR_SRC)/$(DIR_STRU)/list.c
fce = $(DIR_SRC)/$(DIR_BASE)/fce.c




debug_linux: 
	$(CC) $(FLAGS) $(main) $(list) $(fce) -o $(OUTDIR)/$(OUTPUT)$(LINUX) -lm

debug_win: 
	$(CC) $(FLAGS) $(main) $(list) (fce)  -o $(OUTDIR)/$(OUTPUT)$(WIN) -lm
	
run_linux: 
	$(OUTDIR)/$(OUTPUT)$(LINUX) $(CMD_INPUT)
	
leak: debug_linux
	valgrind --tool=memcheck $(OUTDIR)/$(OUTPUT)$(LINUX)

linux: debug_linux run_linux 


