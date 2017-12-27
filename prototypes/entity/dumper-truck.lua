data:extend({
-- Item
  {
    type = "item",
    name = "dumper-truck",
    icon = "__truck__/graphics/entity/dumper-truck/icon_dumper_truck.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport",
    order = "b[personal-transport]-d[dumper]",
    place_result = "dumper-truck",
    stack_size = 1
  },

--Recipe
  {
    type = "recipe",
    name = "dumper-truck",
    enabled = false,
    ingredients =
    {
      {"engine-unit", 12},
	  {"iron-plate", 30},
	  {"steel-plate", 15},
	  {"iron-gear-wheel", 5},
    },
    result = "dumper-truck"
  },

--Entity

  {
   type = "car",
    name = "dumper-truck",
    icon = "__truck__/graphics/entity/dumper-truck/icon_dumper_truck.png",
	flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "dumper-truck"},
    max_health = 1000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    energy_per_hit_point = 1,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 15,
        percent = 30
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "acid",
        decrease = 10,
        percent = 20
      }
    },
    collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
    selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
    effectivity = 0.6,
    braking_power = "300kW", 
	burner =
    {
      effectivity = 0.75,
      fuel_inventory_size = 2,
      smoke =
      {
        {
          name = "tank-smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },	
	consumption = "300kW", -- 680 hp
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
		shift = {0, -21},
        size = 2,
        intensity = 0.8
      },
    },
	
    animation =
    {
      layers =
      {
        {
          width = 192,
          height = 192,
          frame_count = 2,
          direction_count = 128,
          shift = {0, 0},
          animation_speed = 8,
          max_advance = 0.2,
          stripes =
          {
            {
             filename = "__truck__/graphics/entity/dumper-truck/dumper_truck-0.png",
             width_in_frames = 10,
             height_in_frames = 8,
            },
            {
             filename = "__truck__/graphics/entity/dumper-truck/dumper_truck-1.png",
             width_in_frames = 10,
             height_in_frames = 8,
            },
            {
             filename = "__truck__/graphics/entity/dumper-truck/dumper_truck-2.png",
             width_in_frames = 10,
             height_in_frames = 8,
            },
			{
             filename = "__truck__/graphics/entity/dumper-truck/dumper_truck-3.png",
             width_in_frames = 2,
             height_in_frames = 8,
            },
          }
        },
		{
          width = 192,
          height = 192,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 128,
          max_advance = 0.2,
          line_length = 2,
          shift = {0, 0},
          stripes = 
          {
            {
             filename = "__truck__/graphics/entity/dumper-truck/dumper_truck_mask-0.png",
             width_in_frames = 10,
             height_in_frames = 8,
            },
            {
             filename = "__truck__/graphics/entity/dumper-truck/dumper_truck_mask-1.png",
             width_in_frames = 10,
             height_in_frames = 8,
            },
            {
             filename = "__truck__/graphics/entity/dumper-truck/dumper_truck_mask-2.png",
             width_in_frames = 10,
             height_in_frames = 8,
            },
			{
             filename = "__truck__/graphics/entity/dumper-truck/dumper_truck_mask-3.png",
             width_in_frames = 2,
             height_in_frames = 8,
            },
          }
        },		
       {
          width = 192,
          height = 192,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 128,
          shift = {0, 0},
          max_advance = 0.2,
          stripes = 
          {
            {
             filename = "__truck__/graphics/entity/dumper-truck/dumper_truck_shadow-0.png",
             width_in_frames = 10,
             height_in_frames = 8,
            },
            {
             filename = "__truck__/graphics/entity/dumper-truck/dumper_truck_shadow-1.png",
             width_in_frames = 10,
             height_in_frames = 8,
            },
            {
             filename = "__truck__/graphics/entity/dumper-truck/dumper_truck_shadow-2.png",
             width_in_frames = 10,
             height_in_frames = 8,
            },
			{
             filename = "__truck__/graphics/entity/dumper-truck/dumper_truck_shadow-3.png",
             width_in_frames = 2,
             height_in_frames = 8,
            },
          }
        } 
      }
    },
	
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/car-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    stop_trigger_speed = 0.2,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.2;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/car-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/car-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/car-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.010,
    weight = 5000,
    inventory_size = 50
  },
})