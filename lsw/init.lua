lsw = {}

----------------------------
-- Closed Low Sash Window
----------------------------
function lsw.register_window(subname, frame_texture, glass_texture, desc_prefix)
	minetest.register_node("lsw:low_sash_window_" .. subname, {
		description = desc_prefix .. " Low Sash Window",
		drawtype = "mesh",
		mesh = "lsw_window.obj",
		tiles = {frame_texture, glass_texture},
		use_texture_alpha = "clip",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, wood = 1},
		sounds = default.node_sound_wood_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1, -1/2, 1/2, 1/2, -3/8}
		},
		collision_box = {
			type = "fixed",
			fixed = {-1/2, -1, -1/2, 1/2, 1/2, -3/8}
		},
		-- First click: Slide up to Half-Open state
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			node.name = "lsw:low_sash_window_half_" .. subname
			minetest.swap_node(pos, node)
			minetest.sound_play("doors_steel_door_open", {pos = pos, gain = 0.2, pitch = 1.2}, true)
		end,
	})
end

-------------------------------
-- Half-Open Low Sash Window
-------------------------------
function lsw.register_window_half(subname, frame_texture, glass_texture, desc_prefix)
	minetest.register_node("lsw:low_sash_window_half_" .. subname, {
		description = desc_prefix .. " Low Sash Window (Half Open)",
		drawtype = "mesh",
		mesh = "lsw_half.obj",
		tiles = {frame_texture, glass_texture},
		use_texture_alpha = "clip",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, wood = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_wood_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1, -1/2, 1/2, 1/2, -3/8}
		},
		collision_box = {
			type = "fixed",
			fixed = {-1/2, -1, -1/2, 1/2, 1/2, -3/8}
		},
		-- Second click: Slide up to Fully Open state
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			node.name = "lsw:low_sash_window_open_" .. subname
			minetest.swap_node(pos, node)
			minetest.sound_play("doors_steel_door_open", {pos = pos, gain = 0.2, pitch = 1.4}, true)
		end,
	})
end

-----------------------------------
-- Open Low Sash Window
-----------------------------------
function lsw.register_window_open(subname, frame_texture, glass_texture, desc_prefix)
	minetest.register_node("lsw:low_sash_window_open_" .. subname, {
		description = desc_prefix .. " Low Sash Window (Fully Open)",
		drawtype = "mesh",
		mesh = "lsw_open.obj",
		tiles = {frame_texture, glass_texture},
		use_texture_alpha = "clip",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, wood = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_wood_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1, -1/2, 1/2, 1/2, -3/8}
		},
		collision_box = {
			type = "fixed",
			fixed = {-1/2, -1, -1/2, 1/2, 1/2, -3/8}
		},
		-- Third click: Slam completely shut back to Closed state
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			node.name = "lsw:low_sash_window_" .. subname
			minetest.swap_node(pos, node)
			minetest.sound_play("doors_glass_door_open", {pos = pos, gain = 0.5, pitch = 0.7}, true)
		end,
	})
end

------------
-- Materials
------------

lsw.register_window("acacia_wood", "lsw_acacia_wood.png", "lsw_acacia_wood.png", "Acacia Wood")
lsw.register_window_half("acacia_wood", "lsw_acacia_wood.png", "lsw_acacia_wood.png", "Acacia Wood")
lsw.register_window_open("acacia_wood", "lsw_acacia_wood.png", "lsw_acacia_wood.png", "Acacia Wood")

lsw.register_window("aspen_wood", "lsw_aspen_wood.png", "lsw_aspen_wood.png", "Aspen Wood")
lsw.register_window_half("aspen_wood", "lsw_aspen_wood.png", "lsw_aspen_wood.png", "Aspen Wood")
lsw.register_window_open("aspen_wood", "lsw_aspen_wood.png", "lsw_aspen_wood.png", "Aspen Wood")

lsw.register_window("junglewood", "lsw_junglewood.png", "lsw_junglewood.png", "Junglewood")
lsw.register_window_half("junglewood", "lsw_junglewood.png", "lsw_junglewood.png", "Junglewood")
lsw.register_window_open("junglewood", "lsw_junglewood.png", "lsw_junglewood.png", "Junglewood")

lsw.register_window("pine_wood", "lsw_pine_wood.png", "lsw_pine_wood.png", "Pine Wood")
lsw.register_window_half("pine_wood", "lsw_pine_wood.png", "lsw_pine_wood.png", "Pine Wood")
lsw.register_window_open("pine_wood", "lsw_pine_wood.png", "lsw_pine_wood.png", "Pine Wood")

lsw.register_window("wood", "lsw_wood.png", "lsw_wood.png", "Wood")
lsw.register_window_half("wood", "lsw_wood.png", "lsw_wood.png", "Wood")
lsw.register_window_open("wood", "lsw_wood.png", "lsw_wood.png", "Wood")

lsw.register_window("default_obsidian", "lsw_obsidian.png", "lsw_obsidian.png", "Default Obsidian")
lsw.register_window_half("default_obsidian", "lsw_obsidian.png", "lsw_obsidian.png", "Default Obsidian")
lsw.register_window_open("default_obsidian", "lsw_obsidian.png", "lsw_obsidian.png", "Default Obsidian")

lsw.register_window("default_steel", "lsw_steel.png", "lsw_steel.png", "Default Steel")
lsw.register_window_half("default_steel", "lsw_steel.png", "lsw_steel.png", "Default Steel")
lsw.register_window_open("default_steel", "lsw_steel.png", "lsw_steel.png", "Default Steel")
