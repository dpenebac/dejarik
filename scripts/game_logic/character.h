/*
 ============================================================================
 Name        : character.h
 Author      : Liam Tapper
 Version     :
 Copyright   :
 Description : Defines character struct and associated structs for abilites
 Includes prototype functions
 ============================================================================
 */

enum PassiveAbility {
  RECOVERY,
  REACH,
  DOUBLE_ATTACK
};

enum ActiveAbility{
  HEAL,
  STUN
};

enum AbilityType {
    PASSIVE_ABILITY,
    ACTIVE_ABILITY
};

/*
 * For more info: https://stackoverflow.com/questions/252552/why-do-we-need-c-unions
 * Never actually used unions for any reason until today
 * stores different data in the same memory location.
 * one ability can contain a value (passive or active) at any given time.
 */
union Ability {
  enum PassiveAbility passive_ability;
  enum ActiveAbility active_ability;
};

struct characterStats{
  int hp;
  int atk_power;
  int atk_range;
  int move_range;
};


/*
 * all character attributes are held here
 */
struct Character{
  /*
   * this index is important for deciphering the x,y cords
   */
  unsigned int index;i

	enum AbilityType ability_type;
  /*
   * This ensures that we either have one passive or active ability at a time
   * all while using the same memory location! WOOT!
   * NOTE: Do not assign a passive or active ability at the same
   * time as the data will get fucked
   */
  union Ability ability;
  struct characterStats stats;
};