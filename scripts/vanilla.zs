import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;

// Gravel and Sand
mods.botania.ManaInfusion.removeRecipe(<minecraft:sand>);
mods.botania.ManaInfusion.addAlchemy(<minecraft:gravel>, <minecraft:cobblestone>, 50);
mods.botania.ManaInfusion.addAlchemy(<minecraft:sand>, <minecraft:gravel>, 50);

// podzol -> mycelium
mods.astralsorcery.LightTransmutation.addTransmutation(<minecraft:dirt:2>, <minecraft:mycelium>, 20);

// Grindstone coal dust
mods.astralsorcery.Grindstone.addRecipe(<minecraft:coal>, <jaopca:item_dustcoal>);

// Remove botania nether wart crafting
mods.botania.ManaInfusion.removeRecipe(<minecraft:nether_wart>);

// Fuck up people by changing the crafting table recipe
recipes.remove(<minecraft:crafting_table>);
recipes.addShaped("vanilla_crafting_table", <minecraft:crafting_table>, [[<ore:logWood>, <ore:logWood>], [<ore:logWood>, <ore:logWood>]]);
recipes.addShaped("fake_crafting_table", <extendedcrafting:crafting_table>, [[<ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>]]);

// Add dirty info
moretweaker.jei.MoreJei.addDescription(<minecraft:dirt>, ["Uuuh, this rod of the lands is a dirty little boi..."]);

// Make nether wart crafting easier
mods.uniquecrops.SeedCrafting.removeRecipe(<minecraft:nether_wart>);
mods.uniquecrops.SeedCrafting.addRecipe(<minecraft:nether_wart> * 3, <minecraft:dye:1>, <uniquecrops:generic:9>, <uniquecrops:generic:9>);
recipes.remove(<minecraft:nether_wart_block>);
recipes.addShaped(<minecraft:nether_wart_block>, [[<ore:cropNetherWart>, <ore:cropNetherWart>], [<ore:cropNetherWart>, <ore:cropNetherWart>]]);

// Remove too easy snow crafting
mods.botania.PureDaisy.removeRecipe(<minecraft:snow>);

// Remove way to easy wither skull crafting
mods.uniquecrops.SeedCrafting.removeRecipe(<minecraft:skull:1>);

// Disable Vanilla Tools
val vanillaTools = [<minecraft:wooden_hoe>, <minecraft:stone_hoe>, <minecraft:iron_hoe>, <minecraft:diamond_hoe>, <minecraft:golden_hoe>, <minecraft:wooden_axe>, <minecraft:stone_axe>, <minecraft:iron_axe>, <minecraft:diamond_axe>, <minecraft:golden_axe>, <minecraft:wooden_pickaxe>, <minecraft:stone_pickaxe>, <minecraft:iron_pickaxe>, <minecraft:diamond_pickaxe>, <minecraft:golden_pickaxe>, <minecraft:wooden_shovel>, <minecraft:stone_shovel>, <minecraft:iron_shovel>, <minecraft:diamond_shovel>, <minecraft:golden_shovel>, <minecraft:wooden_sword>, <minecraft:stone_sword>, <minecraft:iron_sword>, <minecraft:diamond_sword>, <minecraft:golden_sword>] as IItemStack[];
                    
for tool in vanillaTools {
  tool.maxDamage = 1;
  tool.addTooltip("§cFor Crafting only!");
  tool.addShiftTooltip(format.gray("Your time with this tool will be limited..."), format.gray("Hold SHIFT for more info."));
  //tool.addShiftTooltip(format.gray("Durability: "+tool.damage+"/"+tool.maxDamage), format.gray("Hold SHIFT for more info."));
}