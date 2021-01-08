Movable builds

A datapack made by EDTA. Converts builds of limited size to a movable form that can move and rotate in all directions. You can use and edit anyway you like, as long as you give copyright to EDTA.

HOW IT WORKS

1. Building

The first step is to build something that you want to convert into a movable build. There are a few rules for this.
* Limit yourself to the maximum number of blocks as defined in the init.mcfunction file (default 100).
* Make sure your build is not touching any blocks not part of it (not the ground, or a cliff, or ...).
* All blocks that need to be part should be touching each other. You can cheat this rule by using String: it will be scanned,
 but not be visible.

2. Scanning

To scan your build you should execute the function movable_builds:scan/init_scan at a location in your build.
This location will be the center of your build and as such the axis of all rotations.
To help you with scanning you can run the function movable_builds:scan/help to provide a scan funtion or give you a scan-tool.
There are three other tools. The Hinge tool let's you mark a block before scanning. During the scan, from that block on, everything will belong to a seperate structure/build, which can move independent, but still remains attached to the root build.
The third tool is an Ignore tool. When scanning a block marked with this tool will be ignored when the scan-process runs into it.
The last tool that fits in this categroy is the separator tool: You can mark the edge between 2 blocks as a separator: scans will not go through there.
This is mostly useful if you want to create a sub-build that can rotate independantly using the hing marker and you want some control over which blocks belong to which part.

3. Moving
From the in-game move help section you can get a tool that helps you place your latest scanned build wherever you want.
This is only intended for getting a structure to it's initial location. It will only move the latest scan.
It will reset all rotations. After that you can animate this scan as follows:
* Use the movement tools given to you after a scan
OR
* Use commands in a more flexible and more manual approach

3.1 Movement Tools
There are 3 types of movement tools
* Relative movements such as 'forward' or 'left'
* Absolute movements such as "towards positive x"
* Rotations (Note: the 360 rotations, use tricks to be able to rotate past the 90° up or down rotation, but miht behave weirdly in conjunction with other movements)

Each tool also has different modes. Simply drop the tool to switch mode. Use SNEAK+DROP to actualy drop the tool.
When right-clicking a tool you can try it out, but it will not be a fluent movement (only every 4 ticks).

The best way to use these tools is by putting them in a chest on top of a specific command block which you can get through the ingame help menu
or running the function '/function movable_builds:tools/get_command_block';
In essence you just need a command block that runs the '/function movable_builds:command_block/read_moves' command.
You can configure the command block to your needs (impulse/repeat/chain, whether or not to require redstone). This system is best controlled by redstone.

Whenever the command block is triggered, all movement tools that are present in the chest on top of it, will be triggered, and your build will move.

Since, using this system, you will often need the same tool multiple times, there is a way to duplicate them.
Get the duplicator tool from the ingame help menu or use the function '/function movable_builds:tools/get_duplicator_tool'

Simply put the duplicator tool in your off hand and SNEAK+DROP any tool, to duplicate it.

3.2 Movement through commands
To move your build, you need to:
A. tp the center
B. run the function movable_builds:update/update_position at the center

There are a lot of (optional) functions in the movable_builds:move directory that do this for you. These are helper functions to make
things easier for you, but they are less flexible then writing it yourself using the 2 simple steps above.
You can remove these functions of you don't need them.

In the below examples, replace ID with the id you get when scanning a build.

- Example doing it yourself:
/execute as @e[type=armor_stand,tag=edta_movable_build,tag=center,scores={mb_build_id=ID}] at @s run tp @s ~ ~ ~ ~10 ~
/execute as @e[type=armor_stand,tag=edta_movable_build,tag=center,scores={mb_build_id=ID}] at @s run function movable_builds:update/update_position

- Example using a helper function:
/execute as @e[type=armor_stand,tag=edta_movable_build,tag=center,scores={mb_build_id=ID}] at @s run function movable_builds:move/rotate_clockwise

4. Clean up
There are also some clean up functions to kill the last or all created builds (kill all armor-stands that are part of it).
Note that builds in unloaded chuncks can not be removed.

5. Limitations
* Entities in minecraft can only be teleported in certain ways. xyz, rotate around y and look up and down. This last one is not a real rotation and
 as such comes with limitations: you can only rotate 90 in each direction (up/down). I managed to trick it in the rotate_up_360 / rotate_down_360 function.
* Blocks are rendered differently in armorstands. For one they are smaller. Slabs are always bottom, stairs always face north, ...
Use the Movable Builds Resource Pack to make stairs, slabs, observers, dispensers, droppers and furnaces face correctly.
* No collision. You can simply walk/fall through. The best solution I have for this is invisible shulker passengers with no AI (you still fall through, but you might
 have a hard time walking through and can get pushed. Note that is also possible to program in effects like damage when you walk into a build representing someting deadly.
 I did experiment with collision in the add_colision function, but it's not working well.