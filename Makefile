TARGET = Chip8emu
PSP_EBOOT_ICON = icon0.png
OBJS = chip8.o cpu.o graphics.o memory.o 

CFLAGS = -O2 -G0 -Wall -Dmain=SDL_main -g
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti
ASFLAGS = $(CFLAGS)

LIBDIR =

LDFLAGS =

EXTRA_TARGETS = EBOOT.PBP 
PSP_EBOOT_TITLE = Dreamchip

PSPSDK=$(shell psp-config --pspsdk-path)
LIBS= -L$(PSPSDK)/../lib -lSDLmain -lSDL -lpspaudio -lpspgu -lpsphprm 

PSPBIN = $(PSPSDK)/../bin
include $(PSPSDK)/lib/build.mak