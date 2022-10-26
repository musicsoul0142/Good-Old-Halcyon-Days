#====================================================================
# ファイル名 : mechanics.zs
# 作成者 : Hiiragi Russell Tsubasa: https://github.com/Hiiragi283
# 情報 : Scripts for Mechanics
#====================================================================

#priority 0

//crafttweakerからclassをimport
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

//各種modからclassをimport
import mods.ctintegration.util.RecipePattern;
import mods.mechanics.addCrushingBlockRecipe;
import mods.zenutils.I18n;

//scriptのimport
import scripts.HiiragiUtils;

//このscriptの読み込みの開始をログに出力
print("Start loading mechanics.zs ...");

//作業台レシピの編集
	//上書き
	//新規

//Crushing Blockのレシピの編集
	//追加
		//Color Ores
		for i in 0 to 10 {
			mods.mechanics.addCrushingBlockRecipe([<dcs_climate:dcs_ore_stone_new>.definition.makeStack(i)], [<dcs_climate:dcs_oreitem:0>.definition.makeStack(i)], [1.0]);
		}
		//Non-Colored Ores
		mods.mechanics.addCrushingBlockRecipe([<dcs_climate:dcs_layer_stone_new:0>], [<dcs_climate:dcs_gem:3>], [1.0]);
		mods.mechanics.addCrushingBlockRecipe([<dcs_climate:dcs_layer_stone_new:1>], [<dcs_climate:dcs_miscdust:2>], [1.0]);
		mods.mechanics.addCrushingBlockRecipe([<dcs_climate:dcs_layer_stone_new:2>], [<dcs_climate:dcs_gem_layer:6>], [1.0]);
		mods.mechanics.addCrushingBlockRecipe([<dcs_climate:dcs_layer_stone_new:3>], [<dcs_climate:dcs_gem_layer:2>], [1.0]);
		mods.mechanics.addCrushingBlockRecipe([<dcs_climate:dcs_layer_stone_new:4>], [<dcs_climate:dcs_gem_layer:3>], [1.0]);
		mods.mechanics.addCrushingBlockRecipe([<dcs_climate:dcs_layer_stone_new:5>], [<dcs_climate:dcs_gem_layer:1>], [1.0]);
		mods.mechanics.addCrushingBlockRecipe([<dcs_climate:dcs_layer_stone_new:6>], [<dcs_climate:dcs_gem_green:3>], [1.0]);
		//Metal Dusts
		for i in 0 to 10 {
			mods.mechanics.addCrushingBlockRecipe([<dcs_climate:dcs_oreitem>.definition.makeStack(i)], [<dcs_climate:dcs_oredust:0>.definition.makeStack(i)], [1.0]);
		}

//このscriptの読み込みの完了をログに出力
print("mechanics.zs loaded!");
