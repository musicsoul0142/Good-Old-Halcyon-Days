#====================================================================
# Name   : gohd_tweaks.zs
# Author : Hiiragi R. Tsubasa: https://github.com/Hiiragi283
# Info   : Template for script files
#====================================================================

#priority 0

//Classのimport
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.recipes.IRecipeAction;
import crafttweaker.recipes.IRecipeFunction;
import mods.ctintegration.util.RecipePattern;
import mods.zenutils.HexHelper;
import mods.zenutils.I18n;
import scripts.grassUtils.RecipeUtils;
import scripts.HiiragiUtils;

//読み込みの開始をログに出力
print("Start loading gohd_tweaks.zs ...");

//Crafting Recipes
	//Dustblocks
	HiiragiUtils.addShaped(<gohd_tweaks:dustblock:0>, RecipeUtils.createFull3(<ore:dustPlatinum>), null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:dustblock:1>, RecipeUtils.createFull3(<ore:dustIridium>), null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:dustblock:2>, RecipeUtils.createFull3(<ore:dustMithril>), null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:dustblock:3>, RecipePattern.init(["AAA", "AAB", "BBB"]).map({A:<ore:dustGold>, B:<ore:dustSilver>}).ingredients, null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:dustblock:3>, RecipeUtils.createFull3(<ore:dustElectrum>), null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:dustblock:4>, RecipePattern.init(["AAA", "AAA", "BBB"]).map({A:<ore:dustIron>, B:<ore:dustNickel>}).ingredients, null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:dustblock:4>, RecipeUtils.createFull3(<ore:dustInvar>), null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:dustblock:5>, RecipePattern.init(["AAA", "AAB", "BBB"]).map({A:<ore:dustCopper>, B:<ore:dustNickel>}).ingredients, null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:dustblock:5>, RecipeUtils.createFull3(<ore:dustConstantan>), null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:dustblock:6>, RecipePattern.init(["AAA", "AAA", "BCC"]).map({A:<ore:dustIron>, B:<ore:dustCoal>, C:<ore:itemSilicon>}).ingredients, null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:dustblock:7>, RecipePattern.init(["AAA", "AAB", "BCC"]).map({A:<ore:dustGold>, B:<ore:dustRedstone>, C:<ore:dustGlowstone>}).ingredients, null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:dustblock:8>, RecipePattern.init(["AAA", "AAA", "BCD"]).map({A:<ore:dustGold>, B:<ore:dustRedstone>, C:<ore:dustGlowstone>, D:<ore:dustEnderPearl>}).ingredients, null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:dustblock:9>, RecipePattern.init(["AAA", "AAA", "BBB"]).map({A:<ore:dustRedstone>, B:<ore:itemSilicon>}).ingredients, null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:dustblock:10>, RecipePattern.init(["AAA", "AAA", "ABB"]).map({A:<ore:dustIron>, B:<ore:dustRedstone>}).ingredients, null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:dustblock:11>, RecipePattern.init(["AAA", "AAA", "ABB"]).map({A:<ore:dustIron>, B:<ore:dustEnderPearl>}).ingredients, null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:dustblock:12>, RecipePattern.init(["AAA", "AAA", "BCC"]).map({A:<ore:dustIron>, B:<ore:dustCoal>, C:<ore:dustObsidian>}).ingredients, null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:dustblock:13>, RecipePattern.init(["AAA", "AAA", "ABB"]).map({A:<ore:dustGold>, B:<ore:dustSoulSand>}).ingredients, null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:dustblock:14>, RecipePattern.init(["AAA", "AAA", "BBB"]).map({A:<ore:dustTitanium>, B:<ore:dustEndstone>}).ingredients, null, null);
	//Titanium Molds
	HiiragiUtils.addShaped(<gohd_tweaks:mold_titanium:0>, RecipePattern.init(["ABA"]).map({A:<ore:ingotTitaniumAlloy>, B:<thermalfoundation:material:512>}).ingredients, null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:mold_titanium:1>, RecipePattern.init(["ABA"]).map({A:<ore:ingotTitaniumAlloy>, B:<thermalfoundation:material:513>}).ingredients, null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:mold_titanium:2>, RecipePattern.init(["ABA"]).map({A:<ore:ingotTitaniumAlloy>, B:<thermalfoundation:material:514>}).ingredients, null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:mold_titanium:3>, RecipePattern.init(["ABA"]).map({A:<ore:ingotTitaniumAlloy>, B:<thermalfoundation:material:515>}).ingredients, null, null);
	//Assemblies
	HiiragiUtils.addShaped(<gohd_tweaks:parts_assembly:0>, RecipePattern.init([" A ", "BCB", " D "]).map({A:ToolKnife, B:<ore:dustRedstone>, C:<ore:crystalPureCertusQuartz>, D:<ore:itemSilicon>}).ingredients, null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:parts_assembly:1>, RecipePattern.init([" A ", "BCB", " D "]).map({A:ToolKnife, B:<ore:dustRedstone>, C:<ore:gemDiamond>, D:<ore:itemSilicon>}).ingredients, null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:parts_assembly:2>, RecipePattern.init([" A ", "BCB", " D "]).map({A:ToolKnife, B:<ore:dustRedstone>, C:<ore:ingotGold>, D:<ore:itemSilicon>}).ingredients, null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:parts_assembly:3>, RecipePattern.init([" A ", "BCB", " D "]).map({A:ToolKnife, B:<ore:dustRedstone>, C:<threng:material:5>, D:<ore:itemSilicon>}).ingredients, null, null);
	HiiragiUtils.addShaped(<gohd_tweaks:parts_assembly:4>, RecipePattern.init([" A ", "BCB", " D "]).map({A:ToolKnife, B:<ore:dustRedstone>, C:<threng:material:13>, D:<ore:itemSilicon>}).ingredients, null, null);
	//Others
	HiiragiUtils.addShaped(<gohd_tweaks:sandpaper>, RecipePattern.init([" A ", "ABA", " A "]).map({A:<ore:dustGarnet>, B:<ore:paper>}).ingredients, null, null);
	HiiragiUtils.addShapeless(<gohd_tweaks:sandpaper_diamond>, [<ore:gemDiamond>, <gohd_tweaks:sandpaper>], null, null);

//読み込みの完了をログに出力
print("gohd_tweaks.zs loaded!");
