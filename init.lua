-- Pure Graphite
minetest.register_craftitem("techdiamond:graphite", {
	description = "Pure Graphite",
	inventory_image = "techdiamond_graphite.png"
})

technic.register_extractor_recipe({
    input = {"default:coalblock"},
	output = "techdiamond:graphite" 
})

-- Graphite Pellet
minetest.register_craftitem("techdiamond:graphite_pellet", {
	description = "Graphite-Pellet",
	inventory_image = "techdiamond_graphite_pellet.png"
})

minetest.register_craft({
	type = "cooking",
	output = "techdiamond:graphite_pellet",
	recipe = "techdiamond:graphite",
	cooktime = 15,
})

-- Graphite Block
minetest.register_node("techdiamond:graphite_block", {
	description = ("Graphite Block"),
	tiles = {"techdiamond_graphite_block.png"},
	is_ground_content = false,
	groups = {cracky=1},
	default.node_sound_stone_defaults(),
})

minetest.register_craft({
    type = "shapeless",
    output = "techdiamond:graphite_block",
    recipe = {"techdiamond:graphite_pellet", "techdiamond:graphite_pellet", "techdiamond:graphite_pellet", "techdiamond:graphite_pellet"}
})

-- Diamond
technic.register_compressor_recipe({ 
    input = { "techdiamond:graphite_block" },
	output = "default:diamond" 
})