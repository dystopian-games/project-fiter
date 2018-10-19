 # Contributing
---
### Introduction
Contributing is an integral part of the development cycle, and we want it everything be compatible with each other. 
So this document will detail all the conventions used for both internal and external use.
#### Sprites and Objects
Sprites: Keep a minimum of sprites please
Objects: Keep a minimum of objects, and instead reuse them
##### Naming Conventions
When naming objects, sprites and variables:
* The prefix should be the object using it, e.g. player_spr, player_obj, and player_x.
* The suffix(es) should be the child name in relation to the parent. Possible child names:
  - spr
  - obj
  - x, y

#### Code
When coding, make little comments; they'll make debugging much easier
* The prefix and suffix(es) should all be separated by underscores, e.g. parent_child_anotherchild. 
17
[snake_case](https://en.wikipedia.org/wiki/Snake_case)
18
* Methods of objects should use lowerCamelCase [lowerCamelCase](https://en.wikipedia.org/wiki/Camel_case)

###### Commenting
Comments; They either break or fix you.
* Use multiline comments at the start of each script explaining:
  - Call formatting
  - Processing
  - Output
  Hopefully this will allow us to debug easier
* Use single line comments to preferably describe the actions of each block of code.
  Blocks can be described as code that does work.
* Please, please, *please* use local variables. Minimize the amount of global variables where possible.

#### File and Folder Management
New files should be called based on the background they exist in.
* The prefix should be the background
* If the sprite or object exists in more than one scene, name the sprite file, global_<name>
