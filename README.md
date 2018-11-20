Project Fiter
=============

##### 2D scroller platformer, based on the adventure of Senfer. We, as a team, want to create a game together, and learn about the process in a basic retro game.
##### The game starts with the objective of defeating the wizard boss, with enemies and powerups along the way, which can be activated or killed by touching or jumping on respectively. The player starts off as a character, trying to avoid dying and defeating the bosses. As the player completes each level, they collect ancient relics which grant them powers. The player is allowed a range of utilities to assist the left-to-right journey.
#### Message to devs: 
- Please use the the 16:9 resolution ratio

Table of Contents
-----------------
	
### [How to contribute](#/1)

### [Of interest](#/2)

### [Documentation](#/3)

### [Global Methods](#/4)

Roles
1.  Artist
    *   Drafter: Goutham
    *   2D Character and Map Designer: Liang
    *   3D Character and Map Designer: Barry
2.  Story Design
    *   Designer of Lore and Story: Goutham
3.  Game Design
    *   Game Designer: Barry
4.  Sound Engineer
    *   Music Manager: Goutham
5.  Code Development
    *   Programmer: Barry, Goutham 
6.  Management
s    *   Communication and Compatability Manager: Goutham
7.  Build and Testing
    *   Build tester: All

#### Committing new files
Please access only the necessary files, and **only** push a commit once agreed upon or use [branches](https://bit.ly/2EBUPAl)

### Info
Each of the characters has 3 abilities: melee, weapon and an ultimate.
*  Melee: Short ranged, low damage
*  Weapon: Can be either short or long range, primary damage, has a set cooldown
*  Ultimate: A powerful ability which assists the player in battle. Provide buffs or debuffs to the player(s) or enemies
Each hero has different abilities, but the the melee has only a different animation

### Global Methods
There are a few global methods that you can invoke. Their return type, input type, and other will be specified.
##### specific_animation - Plays the frames
```
```
##### display_text - Displays text in box
```
display_text(array_of_text)
```
* Removes any text instances before it
* Types the text slowly but can be skipped
* Displays **all** the text in the array
* Synchronous

### Player View
The player views the character at a downward angle, with the centered character responding instantaneously to user commands.

### Animated Sprites
* Senfer
   - The protagonist; wants to defeat the evil wizard to regain his throne in the kingdom of Camelot
   - Son of the former king, Son of the primordial goddess, Prince of Camelot
* Smaug
   - The evil wizard's steed; his goal is the same as the evil wizard's, to kill the budding king
   - Steed of the evil wizard
* The evil wizard: Gardar
   - The antagonist; yearns to kill the prince and succeed as a dictator
	 - Owner of Smaud, Enemy of the former king
* The wizard: Polythemus
   - Explains the mechanics of the game integrated into the story in the tutorial
   - Continues the story through interactions with 'Senfer'    
### Abilities

# Relics
   The player earns relics by finishing the first level and slaying the dragon. For the last relic, after the omen from the wizard, he is granted a blessing by his mother.
Ancient Relics
* (Passive) The first of the relics, is the Relic of Power. It allows the player to deal double damage. It looks like a golden talisman.
* (Active) The second relic is the Relic of Speed. It grants a 2 second duration x2 multiplier of speed. Its cooldown is 5 seconds
long. It resembles a syringe.

# Angel's Blessing
   The Angel's Blessing is a power unlocked by Senfer's mother, who is a goddess
	*This power grants Senfer the ability to call upon the sacred horn of the goddesses which allows Senfer's powers (damage, speed) to be slightly greater than the wizard's (although exagerated within the game). It changes the appearance of Senfer to that with flaming eyes.*

### Level 1
   
