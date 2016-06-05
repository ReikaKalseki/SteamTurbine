if data.raw.item["electronic-processing-board-2"] then
  table.insert(data.raw["recipe"]["steam-turbine"].ingredients,{"electronic-processing-board-2", 20})
else
  table.insert(data.raw["recipe"]["steam-turbine"].ingredients,{"processing-unit", 50})
  table.insert(data.raw["recipe"]["steam-turbine"].ingredients,{"advanced-circuit", 100})
end

--[[
if data.raw.item["steam-engine-5"] then
  table.insert(data.raw["recipe"]["steam-turbine"].ingredients,{"steam-engine-5", 1})
else
  table.insert(data.raw["recipe"]["steam-turbine"].ingredients,{"steam-engine", 1})
end
--]]

local steelCost = 20

if data.raw.item["titanium-plate"] then
  table.insert(data.raw["recipe"]["steam-turbine"].ingredients,{"titanium-plate", 20})
else
  steelCost = steelCost+80
end

if data.raw.item["nitinol-alloy"] then
  table.insert(data.raw["recipe"]["steam-turbine"].ingredients,{"nitinol-alloy", 40})
else
  steelCost = steelCost+100
end

table.insert(data.raw["recipe"]["steam-turbine"].ingredients,{"steel-plate", steelCost})

if data.raw.item["tungsten-gear-wheel"] then
  table.insert(data.raw["recipe"]["steam-turbine"].ingredients,{"tungsten-gear-wheel", 80})
else
  table.insert(data.raw["recipe"]["steam-turbine"].ingredients,{"iron-gear-wheel", 200})
end

if data.raw.technology["uranium-processing"] then
	table.insert(data.raw["technology"]["steam-turbine"].prerequisites,"uranium-processing")
end

if data.raw.technology["automation-4"] then
	table.insert(data.raw["technology"]["steam-turbine"].prerequisites,"automation-4")
else
	table.insert(data.raw["technology"]["steam-turbine"].prerequisites,"automation-3")
end

if data.raw.technology["electric-substation-3"] then
	table.insert(data.raw["technology"]["steam-turbine"].prerequisites,"electric-substation-3")
else
	table.insert(data.raw["technology"]["steam-turbine"].prerequisites,"electric-energy-distribution-2")
end

if data.raw.technology["bob-fluid-handling-3"] then
	table.insert(data.raw["technology"]["steam-turbine"].prerequisites,"bob-fluid-handling-3")
else
	table.insert(data.raw["technology"]["steam-turbine"].prerequisites,"fluid-handling")
end

