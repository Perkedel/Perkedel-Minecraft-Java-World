tellraw @s [{"text":"\n\nThis method uses the tools that are given to you, when you create a build.","color":"aqua"}]
tellraw @s [{"text":"  1. Prepare your tools by toggling (drop) them to the mode you want. Hint: use sneak+drop to actually drop them.","color":"aqua"}]
tellraw @s [{"text":"  2. Duplicate tools if needed. ","color":"aqua"}, {"text":"[Get duplicator tool]","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function movable_builds:tools/get_duplicator_tool"}}]
tellraw @s [{"text":"  3. A. You can use the tool directly using right-click. Or...","color":"aqua"}]
tellraw @s [{"text":"  3. B. Put the tools in a chest, on top of a Movable Builds Trigger Command Block ","color":"aqua"}, {"text":"[Get command block]","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function movable_builds:tools/get_command_block"}}]
tellraw @s [{"text":"  4. You can chose the command block to be 'impulse', 'repeat' or even 'chain'","color":"aqua"}]
tellraw @s [{"text":"  5. Power the command block with redstone to trigger all movement tools present in the chest.\n","color":"aqua"}]

function movable_builds:extras/no_command_fb