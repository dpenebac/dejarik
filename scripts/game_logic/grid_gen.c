/*
 ============================================================================
 Name        : grid_gen.c
 Author      : Liam Tapper
 Version     :
 Copyright   : Your copyright notice
 Description : General Idea for grid generation and traversal while being O(1)
 	 	 	   or as close as possible to it.
 	 	 	   Not yet incorporating any stm32 libraries
 	 	 	   (will have to convert later)
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

/*
 * TODO : Move all DEF statements and prototype functions to
 * a header file
 *
 * TODO : think about grid navigation
 *
 * TODO: Implement with stm32 libraries
 */

#define ROWS 2
#define COL 12
#define SIZE ((ROWS*COL)+1)

/*
 * Holds the position of the tile via index
 * If the tile holds a 'character' the visitor flag is high, else low
 */
struct Tile{
    int index;
    int visitor_flag;
};

/*
 * holds an array of tiles based on the x/y coords
 * (see formula(s) below)
 */
struct Grid{
    struct Tile tiles[SIZE];
};

struct Grid CreateTiles(struct Grid grid);
int FindX(int index);
int FindY(int index);
/*
 * Notes: Ensure that the grid/tiles are not freed/lost at any point
 * while game loop is running
 */

int main(void) {
    struct Grid grid = CreateTiles(grid);
    /* finds the x and y cords of the tile at index 1 */
    printf("Row: %i\nCol: %i\n", FindX(1), FindY(1));
	return EXIT_SUCCESS;
}

/*
 * Generates the tiles and inserts them into the grid struct
 * Note: (i * COL + j) is a dumb formula that ensures uniqueness
 * Pretty sure this still qualifies as O(1) due to the static nature
 * of ROWS and COL (constant iteration count).
 */
struct Grid CreateTiles(struct Grid grid){
    for(int i = 1; i <= ROWS; i++){
        for (int j = 1; j <= COL; j++){
            struct Tile tile;

            tile.index = (i * COL + j)-12;
            grid.tiles[tile.index] = tile;
        }
    }
    struct Tile specialTile = { .index = 0 };
    grid.tiles[0] = specialTile;
    return grid;
}

/*
 * Finds the x and y cords on the board given the index of the tiles
 * within the grid array
 */
int FindX(int index){
	if(index == 0){
		return 0;
	}
    int x = (index - 1) / COL + 1;
    return x;
}

int FindY(int index){
	if(index == 0){
		return 0;
	}
    int y = (index - 1) % COL + 1;
    return y;
}
