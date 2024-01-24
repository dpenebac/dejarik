/*
 ============================================================================
 Name        : grid_gen.c
 Author      : Liam Tapper
 Version     :
 Copyright   :
 Description : General Idea for grid generation and traversal while being O(1)
 	 	 	   or as close as possible to it.
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
 * TODO : learn how turns work to create a 'move queue'
 *
 * TODO : REMOVE STDIO AND STDLIB WHEN FINISHED
 *
 * TODO : Find file to Change tab space to 2 before P.R.
 *
 * TODO : Create new branch + PR for character movement and turn queues
 */

#define ROWS 2
#define COL 12
#define MAX_CHARACTERS 8
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

/*
 * Controls all game logic
 */
struct GameManager{
	struct Grid grid;
	struct Character characters[MAX_CHARACTERS];
};

struct Grid CreateTiles(struct Grid grid);
struct GameManager InitializeCharacter(int x, int y, struct GameManager gm);
void SetCharacterTile(int x, int y, struct Grid grid, struct GameManager gm, int characterIndex);
int FindX(int index);
int FindY(int index);
int CheckTile(int x, int y, struct Grid grid);
void PrintBoard(struct Grid grid);
/*
 * Notes: Ensure that the grid/tiles are not lost at any point
 * while game loop is running
 */

int main(void) {
	struct GameManager gm;
	gm.grid = CreateTiles(gm.grid);
	gm = InitializeCharacter(2,7,gm);
	printf("newCharacterIndex: %i\nx:%i\ny:%i\n",
			gm.characters[0].index, FindX(gm.characters[0].index), FindY(gm.characters[0].index));
	PrintBoard(gm.grid);
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
 * Say we throw index 17 into Find x and y,
 * it will spit out the row and collumn for the given grid array index :)
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
struct GameManager InitializeCharacter(int x, int y, struct GameManager gm){
	struct Character newCharacter = { .index = -1 };
	if(CheckTile(x,y,gm.grid) == -1){
		return gm;
	}
	gm.grid.tiles[(x*COL+y)-COL].visitor_flag = 1;
	printf("%i\n%i", (x*COL+y)-COL, gm.grid.tiles[(x*COL+y)-COL].visitor_flag);
	gm.characters[0] = (struct Character){ .index = (x*COL+y)-COL };
	return gm;
}

/*
 * Move to target position
 * CharacterNum currently is the index to the characters array
 * Needs fixing (like a queue system for a turn-based system,
 * but I dont know how a turn works yet)
 */
void SetCharacterTile(int x, int y, struct Grid grid, struct GameManager gm, int characterNum){
	if(CheckTile(x,y,grid) == -1)
		return;
	int characterIndex = gm.characters[characterNum].index;
	gm.grid.tiles[characterIndex].visitor_flag = 0;
	gm.characters[characterNum].index = (x*COL+y)-COL;
	gm.grid.tiles[(x*COL+y)-COL].visitor_flag = 1;
	return;
}

/*
 * Check if the tile is valid
 */
int CheckTile(int x, int y, struct Grid grid){
	if(x < 0 || y < 0)
		return -1;
	if(((x*y)+1) > ((ROWS*COL)+1))
		return -1;
	if (grid.tiles[(x*COL+y)-COL].visitor_flag == 1)
		return -1;

	return 1;
}

/*
 * remove later
 */
void PrintBoard(struct Grid grid){
	for(int i = 1; i <= ROWS; i++){
		for (int j = 1; j <= COL; j++){
			printf("(%i, %i):%i ", i, j, grid.tiles[(i*COL+j)-COL].visitor_flag);
		}
		printf("\n");
	}
}


