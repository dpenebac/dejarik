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


/* prototype functions */
struct Grid CreateTiles(struct Grid grid);
struct GameManager InitializeCharacter(int x, int y, struct GameManager gm);
void SetCharacterTile(int x, int y, struct Grid grid, struct GameManager gm, int characterIndex);
int FindX(int index);
int FindY(int index);
int CheckTile(int x, int y, struct Grid grid);
void PrintBoard(struct Grid grid);

