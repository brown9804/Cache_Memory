#									C++
# Belinda Brown
# July, 2020
######## belindabrownr@gmail.com
###

#******************************************************************************
############  		Modify this part with your own
############ 			files/folders paths.
#******************************************************************************
# Frames result folder
DATA = ./data_in/
SRC = ./src/

#******************************************************************************
############ 						Actions
#******************************************************************************

all: build run

build:
	g++ -o cache $(SRC)main.cc
	# g++ -g --std=c++11 -Wall *.cc -o cache.exe

run: # Default mode
	./cache 4096 2 64 $(DATA)accesses.h

#******************************************************************************
############ 							CLEAN FOR ALL
#******************************************************************************
.PHONY: clean
clean:
	rm cache*
