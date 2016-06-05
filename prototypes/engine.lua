data:extend(
{
  {
    type = "item",
    name = "steam-turbine",
    icon = "__SteamTurbine__/graphics/icons/steam-engine.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy",
    order = "b[steam-power]-b[steam-turbine]",
    place_result = "steam-turbine",
    stack_size = 10,
  },
}
)

data:extend(
{
  {
    type = "recipe",
    name = "steam-turbine",
    enabled = "false",
    energy_required = 60,
    ingredients =
    {
		{"stone-brick", 100},
		{"concrete", 200},
		{"electronic-circuit", 200},
		{"copper-plate", 50}
    },
    result = "steam-turbine",
  },
}
)

data:extend(
{
    {
    type = "generator",
    name = "steam-turbine",
    icon = "__SteamTurbine__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 2, result = "steam-turbine"},
    max_health = 7500,
    corpse = "big-remnants",
    dying_explosion = "massive-explosion",
    effectivity = 68, --34x(=34) = ~1 heat exchanger, //doubled again since can only run 2 per reactor
    fluid_usage_per_tick = 1.7,--2.5 --34x (=3.4) is too unmanageable (pipe throughput), so 25x (=2.5)/17x(=1.7) instead
    resistances =
    {
      {
        type = "fire",
        percent = 100
      },
      {
        type = "impact",
        percent = 40
      },
      {
        type = "physical",
        percent = 20
      }
    },
    collision_box = {{-3.4, -4.9}, {3.4, 4.9}},
    selection_box = {{-3.5, -5.0}, {3.5, 5.0}},
    fluid_box =
    {
      base_area = 8,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 5.5} },
        --{ position = {0, -5} },
		
		--two extra water inputs
        { position = {2, 5.5} },
        { position = {-2, 5.5} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output",
    },
    horizontal_animation =
    {
      filename = "__SteamTurbine__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246*2,
      height = 137*2,
      frame_count = 9,
      line_length = 3,
      shift = {2.68, -0.06} --was 1.34, -0.06
    },
    vertical_animation =
    {
      filename = "__SteamTurbine__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155*2,
      height = 186*2,
      frame_count = 9,
      line_length = 3,
      shift = {1.624, 0.031} --was 0.812, 0.031
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__SteamTurbine__/sound/turbine.ogg",
        volume = 0.7
      },
      match_speed_to_activity = false,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5,
    fast_replaceable_group = "steam-engine",
  },
}
)

data:extend(
{
  {
    type = "technology",
    name = "steam-turbine",
    prerequisites =
    {
	
    },
    icon = "__SteamTurbine__/graphics/icons/steam-engine.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-turbine"
      },
    },
    unit =
    {
      count = 750,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    --upgrade = true,
    order = "[steam]-2",
	icon_size = 128,
  },
}
)





