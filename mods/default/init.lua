-- Minetest 0.4 mod: default
-- See README.txt for licensing and other information.

-- The API documentation in here was moved into game_api.txt

-- Definitions made by this mod that other mods can use too
default = {}

default.LIGHT_MAX = 14

-- GUI related stuff
default.gui_bg = "bgcolor[#080808BB;true]"
default.gui_bg_img = "background[5,5;1,1;gui_formbg.png;true]"
default.gui_slots = "listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"

function default.get_hotbar_bg(x,y)
	local out = ""
	for i=0,7,1 do
		out = out .."image["..x+i..","..y..";1,1;gui_hb_bg.png]"
	end
	return out
end

default.gui_survival_form = "size[8,8.5]"..
			default.gui_bg..
			default.gui_bg_img..
			default.gui_slots..
			"list[current_player;main;0,4.25;8,1;]"..
			"list[current_player;main;0,5.5;8,3;8]"..
			"list[current_player;craft;1.75,0.5;3,3;]"..
			"list[current_player;craftpreview;5.75,1.5;1,1;]"..
			"image[4.75,1.5;1,1;tnt_boom.png^[transformR270]"..
			"listring[current_player;main]"..
			"listring[current_player;craft]"..
			default.get_hotbar_bg(0,4.25)

-- Load files
local default_path = minetest.get_modpath("default")

dofile(default_path.."/functions.lua")
dofile(default_path.."/nodes.lua")
dofile(default_path.."/cblock.lua")
dofile(default_path.."/torch.lua")
dofile(default_path.."/tools.lua")
dofile(default_path.."/item_entity.lua")
dofile(default_path.."/crafting.lua")
dofile(default_path.."/mapgen.lua")
dofile(default_path.."/aliases.lua")
dofile(default_path.."/legacy.lua")
dofile(default_path.."/kill.lua")
dofile(default_path.."/walls.lua")
dofile(default_path.."/dungeon_loot.lua")
dofile(default_path.."/doors.lua")
dofile(default_path.."/fire.lua")
dofile(default_path.."/stairs.lua")
dofile(default_path.."/screwdriver.lua")
dofile(default_path.."/bucket.lua")
dofile(default_path.."/tnt.lua")
dofile(default_path.."/bones.lua")
dofile(default_path.."/player.lua")
dofile(default_path.."/cavespace.lua")
dofile(default_path.."/beds_init.lua")
dofile(default_path.."/mobs_init.lua")
dofile(default_path.."/dye.lua")
dofile(default_path.."/flowers_init.lua")
dofile(default_path.."/intersecting.lua")
dofile(default_path.."/moreblocks_init.lua")
dofile(default_path.."/welcome.lua")
--dofile(default_path.."/inventory_plus.lua")
--dofile(default_path.."/creative.lua")
--dofile(default_path.."/zcg.lua")
--dofile(default_path.."/skins_init.lua")


