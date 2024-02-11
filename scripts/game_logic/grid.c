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
//comment out this line to ignore stdio & stdlib functionality
#define NOT_EMBEDDED

#ifdef NOT_EMBEDDED
	#include <stdio.h>
	#include <stdlib.h>
#endif

#include "grid.h"
#include "debug.h"

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
	// The Two Functions create their own error messages
  if(TileValid(x,y,gm.grid) == -1 || TileContainsPiece(x,y,gm.grid) == -1){
    return gm;
  }
  gm.grid.tiles[(x*COL+y)-COL].visitor_flag = 1;
  #ifdef NOT_EMBEDDED
    printf("%i\n%i", (x*COL+y)-COL, gm.grid.tiles[(x*COL+y)-COL].visitor_flag);
  #endif
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
  // The Two Functions create their own error messages
  if(TileValid(x,y,gm.grid) == -1 || TileContainsPiece(x,y,gm.grid) == -1)
    return;
  int characterIndex = gm.characters[characterNum].index;
  gm.grid.tiles[characterIndex].visitor_flag = 0;
  gm.characters[characterNum].index = (x*COL+y)-COL;
  gm.grid.tiles[(x*COL+y)-COL].visitor_flag = 1;
  return;
}

/*
 * Check if the tile is valid:
 * returns false if x/y is ever less than 0 
 * or greater than the number or allows rows/col
 */
int TileValid(int x, int y, struct Grid grid) {
	if(x < 0 || y < 0) {
		print("Tile Error: Can't have x or y position < 0");
		return -1;
	}
	if(((x*y)+1) > ((ROWS*COL)+1)) {
		print("Tile Error: Tile index out of range");
		return -1;
	}
	return 1;
}
/*
 * Checks if a tile is occupied
 * returns false if so, true otherwise
 */ 
int TileContainsPiece(int x, int y, struct Grid grid){
  if (grid.tiles[(x*COL+y)-COL].visitor_flag == 1){
    print("Tile Error: Tile already Occupied");
    return -1;
  }

  return 1;
}

/*
 * remove later
 */
void PrintBoard(struct Grid grid){
  #ifdef NOT_EMBEDDED
    for(int i = 1; i <= ROWS; i++){
      for (int j = 1; j <= COL; j++){
        printf("(%i, %i):%i ", i, j, grid.tiles[(i*COL+j)-COL].visitor_flag);
      }
      printf("\n");
    }
  #endif
}

/*
 * Prints out an error message
 * Comment out IS_EMBEDDED to ignore printf's
 */
void Print(char s[100]){
	#ifdef NOT_EMBEDDED
		printf("%s\n", s);
	#endif
	#ifndef NOT_EMBEDDED
		// write over uart
	#endif
}

