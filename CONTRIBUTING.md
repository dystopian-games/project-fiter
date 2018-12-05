# Contributing
---
### Introduction
Contributing is an integral part of the development cycle, and we want everything be compatible with each other. 
So this document will detail all the conventions used for both internal and external use.
#### Sprites and Objects
Sprites: Keep a minimum of sprites please
Objects: Keep a minimum of objects, and instead reuse them
##### Naming Conventions
When naming functions, objects, sprites and variables:
* The prefix should be the object using it, e.g. player_spr and player_obj.
* The suffix(es) should be the child name in relation to the parent. Possible child names:
  - spr
  - obj
  - x, y
---
### Code
When coding, **please** make little comments; they'll make debugging much easier
* The prefix and suffix(es) should all be separated by underscores, e.g. parent_child_anotherchild. [snake_case](https://en.wikipedia.org/wiki/Snake_case)
* Methods of objects should use lowerCamelCase [lowerCamelCase](https://en.wikipedia.org/wiki/Camel_case)
* Always put spaces around operators ( = + - * / ), and after commas

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
Unimportant sprites and objects should be called based on the background they exist in.
* The prefix should be the background
* If the sprite or object exists in more than one scene, such as player_obj, keep the name
---
### Patching
Patching requires a manifest file written in XML. It should be in the root of the directory to be downloaded. The files the application downloads from is from the *archives* folder on [master](https://github.com/dystopian-games/project-fiter/tree/master). Each should be a zip file, with the appropriate manifest, detailing all the files included. The file checking (existsFolders()) **skips over /tmp**.
\n**NOTE**: There are currently no security measures on the files, which we will hopefully implement later in the form of SHA-256.
#### Manifest conventions
Typical JS XML object
Using the native fs module to read the xml file, we then use 'xml-js' method 'xml2js' to convert it into a javascript object.  
| // reads file 'manifest.xml' and receives a manifest object  
| const fs                       = require("fs");  
| const convert                  = require("xml-js");  
| const manifestxml              = fs.readFileSync("./manifest.xml", "utf8");  
| const manifest                 = convert.xml2js(manifestxml, {compact: true, alwaysArray: true});  
##### Header Declaration and Namespace
The declaration should be: "<?xml version="1.0" encoding="UTF-8" ?>", and the namespace: manifest
##### manifest
The root of the file. This is where you should declare the namespace.  
| \<manifest xmlns:manifest="https://github.com/dystopian-games/project-fiter/tree/master/archives">  
|     - \<data here/>  
| \</manifest\>  
The *manifest* tag has two children:
* *manifestMetaData*
* *manifestContent*
###### manifestMetaData
One child of the *manifest*. It typically holds:
* version - The version of the manifest file. It holds the version of the collective files it holds. In the form, v1.0.2, where 1 is a major change, 0 is a relatively large client or serverside change, and 2 is a content change.
* keyValuePair - This is the account key, unutilized at this time
  - key : element - Username
  - value : element - The key for their account, undecided numeral system but might become base64 ASCII
*keyValuePair is optional*
##### manifestContent
One child of the *manifest*. It typically holds:
* data - This holds the file or directory
  - type : attribute - This holds the particular type, directory | file
  - filename : attribute - This might hold a file in that particular directory
  - data : element - This holds any another directories (recursive).
##### Automatic patch creation (APC)
###### manifest_maker
ETA: 1 week
The manifest maker - Makes a manifest based on a file hierarchy. The manifest is downloaded with the patch files.
