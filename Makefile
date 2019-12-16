HEADERS = assig_three218.h  game_state.h  game_tree.h  node.h  queue.h  square_state.h  stack.h  t_node.h
OBJECTS = assig_three218.o  game_state.o  game_tree.o  node.o  queue.o  square_state.o  stack.o  t_node.o

all: MazeGame

%.o: %.c $(HEADERS)
	gcc -std=c99 -c $< -o $@

MazeGame: $(OBJECTS)
	gcc $(OBJECTS) -o $@

clean:
	rm -f $(OBJECTS)
	rm -f MazeGame