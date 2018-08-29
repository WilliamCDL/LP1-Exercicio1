RM = rm -rf 
SRC = ./src
INC = ./include
BIN = ./bin
OBJ = ./build
PROG = $(BIN)/main
CC = g++
CPPFLAGS = -g -Wall -pedantic -std=c++11 -Iinclude
OBJS = $(OBJ)/main2.o $(OBJ)/turma.o $(OBJ)/aluno.o 


all: $(OBJS)
	$(CC) -o $(PROG) $(OBJS)

$(OBJ)/main2.o:
	$(CC) $(CPPFLAGS) -c $(SRC)/main2.cpp -o $(OBJ)/main2.o

$(OBJ)/turma.o:
	$(CC) $(CPPFLAGS) -c $(SRC)/turma.cpp -o $(OBJ)/turma.o

$(OBJ)/aluno.o:
	$(CC) $(CPPFLAGS) -c $(SRC)/aluno.cpp -o $(OBJ)/aluno.o


clean:
	$(RM) $(PROG) $(OBJS)