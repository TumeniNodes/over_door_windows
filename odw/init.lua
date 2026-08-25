odw = {}

----------------
-- Single Window
----------------
function odw.register_window(subname, wood_texture, glass_texture, desc_prefix)
	minetest.register_node("odw:over_door_window_" .. subname, {
		description = desc_prefix .. " Over Door Window",
		drawtype = "mesh",
		mesh = "odw_window.obj",
		tiles = {wood_texture, glass_texture},
		use_texture_alpha = "clip",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, wood = 1},
		sounds = default.node_sound_wood_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, 1/2, -3/8}
		},
		collision_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, 1/2, -3/8}
		},
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			node.name = "odw:over_door_window_open_" .. subname
			minetest.swap_node(pos, node)
			minetest.sound_play("doors_steel_door_open", {pos = pos, gain = 0.2}, true)
		end,
	})
end

---------------------
-- Open Single Window
---------------------
function odw.register_window_open(subname, wood_texture, glass_texture, desc_prefix)
	minetest.register_node("odw:over_door_window_open_" .. subname, {
		description = desc_prefix .. " Over Door Window (Open)",
		drawtype = "mesh",
		mesh = "odw_window_open.obj",
		tiles = {wood_texture, glass_texture},
		use_texture_alpha = "clip",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, wood = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_wood_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, 1/2, -3/8}
		},
		collision_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, 1/2, -3/8}
		},
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			node.name = "odw:over_door_window_" .. subname
			minetest.swap_node(pos, node)
			minetest.sound_play("doors_steel_door_open", {pos = pos, gain = 0.2}, true)
		end,
	})
end

----------------
-- Double Window
----------------
function odw.register_dble_window(subname, wood_texture, glass_texture, desc_prefix)
	minetest.register_node("odw:over_door_dble_window_" .. subname, {
		description = desc_prefix .. " Over Door Double Window",
		drawtype = "mesh",
		mesh = "odw_dble_window.obj",
		tiles = {wood_texture, glass_texture},
		use_texture_alpha = "clip",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, wood = 1},
		sounds = default.node_sound_wood_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-3/2, -1/2, -1/2, 1/2, 1/2, -3/8}
		},
		collision_box = {
			type = "fixed",
			fixed = {-3/2, -1/2, -1/2, 1/2, 1/2, -3/8}
		},
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			node.name = "odw:over_door_dble_window_open_" .. subname
			minetest.swap_node(pos, node)
			minetest.sound_play("doors_steel_door_open", {pos = pos, gain = 0.2}, true)
		end,
	})
end

---------------------
-- Open Double Window
---------------------
function odw.register_dble_window_open(subname, wood_texture, glass_texture, desc_prefix)
	minetest.register_node("odw:over_door_dble_window_open_" .. subname, {
		description = desc_prefix .. " Over Door Double Window (Open)",
		drawtype = "mesh",
		mesh = "odw_dble_window_open.obj",
		tiles = {wood_texture, glass_texture},
		use_texture_alpha = "clip",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, wood = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_wood_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-3/2, -1/2, -1/2, 1/2, 1/2, -3/8}
		},
		collision_box = {
			type = "fixed",
			fixed = {-3/2, -1/2, -1/2, 1/2, 1/2, -3/8}
		},
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			node.name = "odw:over_door_dble_window_" .. subname
			minetest.swap_node(pos, node)
			minetest.sound_play("doors_steel_door_open", {pos = pos, gain = 0.2}, true)
		end,
	})
end

------------
-- Materials
------------

odw.register_window("acacia_wood", "odw_glass.png", "odw_acacia_wood.png", "Acacia Wood")
odw.register_window_open("acacia_wood", "odw_glass.png", "odw_acacia_wood.png", "Acacia Wood")
odw.register_dble_window("acacia_wood", "odw_dble_glass.png", "odw_dble_acacia_wood.png", "Acacia Wood")
odw.register_dble_window_open("acacia_wood", "odw_dble_glass.png", "odw_dble_acacia_wood.png", "Acacia Wood")

odw.register_window("aspen_wood", "odw_glass.png", "odw_aspen_wood.png", "Aspen Wood")
odw.register_window_open("aspen_wood", "odw_glass.png", "odw_aspen_wood.png", "Aspen Wood")
odw.register_dble_window("aspen_wood", "odw_dble_glass.png", "odw_dble_aspen_wood.png", "Aspen Wood")
odw.register_dble_window_open("aspen_wood", "odw_dble_glass.png", "odw_dble_aspen_wood.png", "Aspen Wood")

odw.register_window("junglewood", "odw_glass.png", "odw_junglewood.png", "Junglewood")
odw.register_window_open("junglewood", "odw_glass.png", "odw_junglewood.png", "Junglewood")
odw.register_dble_window("junglewood", "odw_dble_glass.png", "odw_dble_junglewood.png", "Junglewood")
odw.register_dble_window_open("junglewood", "odw_dble_glass.png", "odw_dble_junglewood.png", "Junglewood")

odw.register_window("pine_wood", "odw_glass.png", "odw_pine_wood.png", "Pine Wood")
odw.register_window_open("pine_wood", "odw_glass.png", "odw_pine_wood.png", "Pine Wood")
odw.register_dble_window("pine_wood", "odw_dble_glass.png", "odw_dble_pine_wood.png", "Pine Wood")
odw.register_dble_window_open("pine_wood", "odw_dble_glass.png", "odw_dble_pine_wood.png", "Pine Wood")

odw.register_window("wood", "odw_glass.png", "odw_wood.png", "Wood")
odw.register_window_open("wood", "odw_glass.png", "odw_wood.png", "Wood")
odw.register_dble_window("wood", "odw_dble_glass.png", "odw_dble_wood.png", "Wood")
odw.register_dble_window_open("wood", "odw_dble_glass.png", "odw_dble_wood.png", "Wood")

odw.register_window("obsidian", "odw_glass.png", "odw_obsidian.png", "Obsidian")
odw.register_window_open("obsidian", "odw_glass.png", "odw_obsidian.png", "Obsidian")
odw.register_dble_window("obsidian", "odw_dble_glass.png", "odw_dble_obsidian.png", "Obsidian")
odw.register_dble_window_open("obsidian", "odw_dble_glass.png", "odw_dble_obsidian.png", "Obsidian")

odw.register_window("steel", "odw_glass.png", "odw_steel.png", "Steel")
odw.register_window_open("steel", "odw_glass.png", "odw_steel.png", "Steel")
odw.register_dble_window("steel", "odw_dble_glass.png", "odw_dble_steel.png", "Steel")
odw.register_dble_window_open("steel", "odw_dble_glass.png", "odw_dble_steel.png", "Steel")

