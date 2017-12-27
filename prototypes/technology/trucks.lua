data:extend({
--Technology

{
    type = "technology",
    name = "trucks",
    icon = "__truck__/graphics/technology/trucks.png",
	icon_size = 128,
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "dumper-truck"
      },
    },
    prerequisites = {"logistics-2", "engine","automobilism"},
    unit =
    {
      count = 25,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 20
    },
    order = "e-c-d"
  },

})