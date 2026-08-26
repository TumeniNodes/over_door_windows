dsw = {}

----------------------------
-- Closed Double Sash Window
----------------------------
function dsw.register_window(subname, wood_texture, glass_texture, desc_prefix, inv_img)
	minetest.register_node("dsw:sash_window_" .. subname, {
		description = desc_prefix .. " Double Sash Window",
		drawtype = "mesh",
		mesh = "dsw_window.obj",
		tiles = {wood_texture, glass_texture},
		inventory_image = inv_img,
		wield_image = inv_img,
		use_texture_alpha = "clip",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, wood = 1},
		sounds = default.node_sound_wood_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, 3/2, -6/16}
		},
		collision_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, 3/2, -6/16}
		},
		-- First click: Slide up to Half-Open state
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			node.name = "dsw:sash_window_half_" .. subname
			minetest.swap_node(pos, node)
			minetest.sound_play("doors_steel_door_open", {pos = pos, gain = 0.2, pitch = 1.2}, true)
		end,
	})
end

-------------------------------
-- Half-Open Double Sash Window
-------------------------------
function dsw.register_window_half(subname, wood_texture, glass_texture, desc_prefix)
	minetest.register_node("dsw:sash_window_half_" .. subname, {
		description = desc_prefix .. " Double Sash Window (Half Open)",
		drawtype = "mesh",
		mesh = "dsw_half.obj",
		tiles = {wood_texture, glass_texture},
		use_texture_alpha = "clip",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, wood = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_wood_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, 3/2, -6/16}
		},
		collision_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, 3/2, -6/16}
		},
		-- Second click: Slide up to Fully Open state
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			node.name = "dsw:sash_window_open_" .. subname
			minetest.swap_node(pos, node)
			minetest.sound_play("doors_steel_door_open", {pos = pos, gain = 0.2, pitch = 1.4}, true)
		end,
	})
end

-----------------------------------
-- Open Double Sash Window
-----------------------------------
function dsw.register_window_open(subname, wood_texture, glass_texture, desc_prefix)
	minetest.register_node("dsw:sash_window_open_" .. subname, {
		description = desc_prefix .. " Double Sash Window (Fully Open)",
		drawtype = "mesh",
		mesh = "dsw_open.obj",
		tiles = {wood_texture, glass_texture},
		use_texture_alpha = "clip",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, wood = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_wood_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, 3/2, -6/16}
		},
		collision_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, 3/2, -6/16}
		},
		-- Third click: Slam completely shut back to Closed state
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			node.name = "dsw:sash_window_" .. subname
			minetest.swap_node(pos, node)
			minetest.sound_play("doors_glass_door_open", {pos = pos, gain = 0.5, pitch = 0.7}, true)
		end,
	})
end

------------
-- Materials
------------

dsw.register_window("acacia_wood", "dsw_acacia_wood_sash.png", "dsw_acacia_wood_sash.png", "Acacia Wood", "lsw_acacia_inv.png")
dsw.register_window_half("acacia_wood", "dsw_acacia_wood_sash.png", "dsw_acacia_wood_sash.png", "Acacia Wood")
dsw.register_window_open("acacia_wood", "dsw_acacia_wood_sash.png", "dsw_acacia_wood_sash.png", "Acacia Wood")

dsw.register_window("aspen_wood", "dsw_aspen_wood_sash.png", "dsw_aspen_wood_sash.png", "Aspen Wood", "lsw_aspen_inv.png")
dsw.register_window_half("aspen_wood", "dsw_aspen_wood_sash.png", "dsw_aspen_wood_sash.png", "Aspen Wood")
dsw.register_window_open("aspen_wood", "dsw_aspen_wood_sash.png", "dsw_aspen_wood_sash.png", "Aspen Wood")

dsw.register_window("junglewood", "dsw_junglewood_sash.png", "dsw_junglewood_sash.png", "Junglewood", "lsw_junglewood_inv.png")
dsw.register_window_half("junglewood", "dsw_junglewood_sash.png", "dsw_junglewood_sash.png", "Junglewood")
dsw.register_window_open("junglewood", "dsw_junglewood_sash.png", "dsw_junglewood_sash.png", "Junglewood")

dsw.register_window("pine_wood", "dsw_pine_wood_sash.png", "dsw_pine_wood_sash.png", "Pine Wood", "lsw_pine_inv.png")
dsw.register_window_half("pine_wood", "dsw_pine_wood_sash.png", "dsw_pine_wood_sash.png", "Pine Wood")
dsw.register_window_open("pine_wood", "dsw_pine_wood_sash.png", "dsw_pine_wood_sash.png", "Pine Wood")

dsw.register_window("wood", "dsw_wood_sash.png", "dsw_wood_sash.png", "Wood", "lsw_wood_inv.png")
dsw.register_window_half("wood", "dsw_wood_sash.png", "dsw_wood_sash.png", "Wood")
dsw.register_window_open("wood", "dsw_wood_sash.png", "dsw_wood_sash.png", "Wood")

dsw.register_window("default_obsidian", "dsw_obsidian_sash.png", "dsw_obsidian_sash.png", "Default Obsidian", "lsw_obsidian_inv.png")
dsw.register_window_half("default_obsidian", "dsw_obsidian_sash.png", "dsw_obsidian_sash.png", "Default Obsidian")
dsw.register_window_open("default_obsidian", "dsw_obsidian_sash.png", "dsw_obsidian_sash.png", "Default Obsidian")

dsw.register_window("default_steel", "dsw_steel_sash.png", "dsw_steel_sash.png", "Default Steel", "lsw_steel_inv.png")
dsw.register_window_half("default_steel", "dsw_steel_sash.png", "dsw_steel_sash.png", "Default Steel")
dsw.register_window_open("default_steel", "dsw_steel_sash.png", "dsw_steel_sash.png", "Default Steel")
