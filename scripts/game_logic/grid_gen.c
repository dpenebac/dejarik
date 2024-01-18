/*
 ============================================================================
 Name        : grid_gen.c
 Author      : Liam Tapper
 Version     :
 Copyright   :
 Description : General Idea for grid generation and traversal while being O(1)
 	 	 	   or as close as possible to it.
 	 	 	   Not yet incorporating any stm32 libraries
 	 	 	   (will have to convert later)
 	 	 	   This just holds basic game logic
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

/*
 * TODO : Move all DEF statements and prototype functions to
 * a header file
 *
 * TODO : Prototype Traversal
 *
 * TODO : Implement with stm32 libraries
 *
 * TODO : some more shit I can't think of atm
 */

#define ROWS 2
#define COL 12
#define SIZE ((ROWS*COL)+1)

/*
 * Holds the position of the tile via index
 * If the tile holds a 'character' the visitor flag is high, else low
 */
struct Tile{
	unsigned int index;
	unsigned int visitor_flag;
};

/*
 * holds an array of tiles based on the x/y coords
 * (see formula(s) below)
 *
 * Note: 0 is the special index for the center 'tile'
 */
struct Grid{
    struct Tile tiles[SIZE];
};


struct Character{
	unsigned int index;
	/*
	 * apply whatever stats later, just interested in traversal atm
	 */
};

struct Grid CreateTiles(struct Grid grid);
struct Character InitializeCharacter(int x, int y);
int FindX(int index);
int FindY(int index);
/*
 * Notes: Ensure that the grid/tiles are not freed/lost at any point
 * while game loop is running
 */

int main(void) {
    struct Grid grid = CreateTiles(grid);
    struct Character newChar = InitializeCharacter(2,7);
    printf("newCharacterIndex: %i\nx:%i\ny:%i\n",
    		newChar.index, FindX(newChar.index), FindY(newChar.index));
    /* finds the x and y cords of the tile at index 17 */
    // printf("Row: %i\nCol: %i\n", FindX(17), FindY(17));
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

            tile.index = (i*COL+j)-COL;
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
    return (index == 0) ? 0 : ((index-1)/COL+1);
}

int FindY(int index){
    return (index == 0) ? 0 : ((index-1)%COL+1);
}

/*
 * Character Initialization
 * A return character of index -1 marks failed initialization
 */
struct Character InitializeCharacter(int x, int y){
	struct Character newCharacter = { .index = -1 };
	if(x < 0 || y < 0)
		return newCharacter;
	if(((x*y)+1) > ((ROWS*COL)+1))
		return newCharacter;
	return (struct Character){ .index = (x*COL+y)-COL };
}
