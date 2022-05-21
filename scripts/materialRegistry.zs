#======================================================================
# ファイル名 : materialRegistry.zs
# 作成者 : Hiiragi Russell Tsubasa: https://github.com/Hiiragi283
# 情報 : 素材の登録
#        このスクリプトの一部はSevtech-Agesを参考にしています
#        https://github.com/DarkPacks/SevTech-Ages
#======================================================================

//norun
#loader contenttweaker
#priority 100

//crafttweakerからclassをimport
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//各種modからclassをimport
import mods.contenttweaker.BlockState;
import mods.contenttweaker.BlockPos;
import mods.contenttweaker.Color;
import mods.contenttweaker.IBlockColorSupplier;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.PartType;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;
import mods.zenutils.HexHelper;

//scriptのimport
import scripts.RussellUtils;

//このscriptの読み込みの開始をログに出力
print("Start loading materialRegistry.zs ...");

//関数の定義
    function funcRegisterMaterial(id as string, color as string) as Material {
        return MaterialSystem.getMaterialBuilder().setName(id).setColor(HexHelper.toDecInteger(color)).build();
    }

    function funcRegisterParts(id as string, partType as string, prefix as string) {
        return mods.contenttweaker.MaterialSystem.getPartBuilder().setName(id).setPartType(MaterialSystem.getPartType(partType)).setOreDictName(prefix).build();
    }

//素材とその色の定義
    //気体元素
        val materialHydrogenHalide = funcRegisterMaterial("hydrogen_halide", "0088AA");
        val materialHydrogenSulfide = funcRegisterMaterial("hydrogen_sulfide", "C94404");
        val materialHalogen = funcRegisterMaterial("halogen", "2B7F7F");

    //非金属
        val materialGraphite = funcRegisterMaterial("Graphite", "808080");
        val materialSilicon = funcRegisterMaterial("Silicon", "3C3C50");
        val materialPhosphorus = funcRegisterMaterial("Phosphorus", "FFFF00");
        //val materialPhosphate = funcRegisterMaterial("Phosphate", "FFFF00");
        val materialSulfur = funcRegisterMaterial("Sulfur", "C8C800");
        val materialGallium = funcRegisterMaterial("Gallium", "434343");
        val materialGalliumArsenide = funcRegisterMaterial("Gallium Arsenide", "A0A0A0"); //GaAs
        val materialArsenic = funcRegisterMaterial("Arsenic", "676756");
        val materialIndium = funcRegisterMaterial("Indium", "400080");
        val materialIndiumGalliumPhosphide = funcRegisterMaterial("Indium Gallium Phosphide", "A08CBE"); //InGaP

    //遷移金属
        val materialAluminum = funcRegisterMaterial("Aluminum", "E2D1CE");
        val materialAlumina = funcRegisterMaterial("Alumina", "FDFDFD"); //Al2O3
        val materialTitanium = funcRegisterMaterial("Titanium", "E6D6C1");
        val materialTitaniumAlloy = funcRegisterMaterial("Titanium Alloy", "ae9169");
        val materialTitaniumTetrachloride = funcRegisterMaterial("titanium_tetrachloride", "D40D5C"); //TiCl4
        val materialRutile  = funcRegisterMaterial("Rutile", "FFEE40"); //TiO2
        val materialMangalloy = funcRegisterMaterial("Mangalloy", "bea0a4");
        val materialIron = funcRegisterMaterial("Iron", "C8C8C8");
        val materialIron3Chloride = funcRegisterMaterial("Iron Chloride (III)", "0088AA"); //FeCl3
        val materialStainlessSteel = funcRegisterMaterial("Stainless Steel", "D6D6D9"); //Fe6Ni2Mn
        val materialSteel = funcRegisterMaterial("Steel", "808080");
        val materialToolSteel = funcRegisterMaterial("Tool Steel", "919990");
        //val materialMagnetite = funcRegisterMaterial("Magnetite", "1E1E1E");
        val materialCobalt = funcRegisterMaterial("Cobalt", "5050FA");
        val materialCobaltite = funcRegisterMaterial("Cobaltite", "5050FA"); //CoAsS
        val materialNickelSilver = funcRegisterMaterial("Nickelsilver", "aabfbf"); //CoAsS
        val materialCopper = funcRegisterMaterial("Copper", "FF6400");
        //val materialBrass = funcRegisterMaterial("Brass", "FFB400"); //Cu3Zn
        val materialBronze = funcRegisterMaterial("Bronze", "FF8000"); //Cu3Sn
        val materialTin = funcRegisterMaterial("Tin", "DCDCDC");
        val materialHafnium = funcRegisterMaterial("Hafnium", "010b65");
        val materialTantalum = funcRegisterMaterial("Tantalum", "4C0001");
        val materialTantalumHafniumCarbide = funcRegisterMaterial("Tantalum Hafnium Carbide", "330066"); //HfTa2O6
        val materialPottasiumHeptaChloroTantalate = funcRegisterMaterial("Treated Tantalite", "952aff"); //K2TaCl7
        val materialTantalite = funcRegisterMaterial("Tantalite", "952aff"); //HfTa2O6
        val materialTungsten = funcRegisterMaterial("Tungsten", "677680");
        val materialTungstenCarbide = funcRegisterMaterial("Tungsten Carbide", "10181E"); //WC
        val materialTungstensteel = funcRegisterMaterial("Tungstensteel", "667680"); //WC
        val materialTungstate = funcRegisterMaterial("Tungstate", "373223"); //Li2WO4
        val materialOsmium = funcRegisterMaterial("Osmium", "B4BDD3");
        val materialPlatinum = funcRegisterMaterial("Platinum", "C2D0D8");
        val materialSheldonite = funcRegisterMaterial("Sheldonite", "c0dc89");
        val materialGold = funcRegisterMaterial("Gold", "FFE650");
        val materialElectrum = funcRegisterMaterial("Electrum", "FFFF64");
        val materialCinnabar = funcRegisterMaterial("Cinnabar", "960000"); //HgS
        val materialLead = funcRegisterMaterial("Lead", "6F6B77");
        val materialGalena = funcRegisterMaterial("Galena", "643C64"); //AgPb
        val materialUraninite = funcRegisterMaterial("Uraninite", "232323"); //UO2

    //アルカリ金属
        //val materialSalt = funcRegisterMaterial("Salt", "FAFAFA"); //NaCl
        val materialRockSalt = funcRegisterMaterial("Rock Salt", "F0C8C8"); //KCl

    //アルカリ土類金属
        val materialBeryllium = funcRegisterMaterial("Beryllium", "64B464");
        val materialMagnalium = funcRegisterMaterial("Magnalium", "C8BEFF"); //MgAl8
        val materialMagnesia = funcRegisterMaterial("Magnesia", "887878"); //MgO

    //宝石類
        val materialCertusQuartz = funcRegisterMaterial("Certus Quartz", "D2D2E6");
        val materialNetherQuartz = funcRegisterMaterial("Quartz", "E6D2D2");
        val materialRuby = funcRegisterMaterial("Ruby", "FF6464");
        val materialSapphire = funcRegisterMaterial("Sapphire", "6464C8");

    //酸

    //有機物質

    //未分類
        val materialGrout = funcRegisterMaterial("Grout", "d0d1d6");

    //架空素材
        val materialRedstone = funcRegisterMaterial("Redstone", "C80000");
        val materialRedAlloy = funcRegisterMaterial("Redstone Alloy", "C80000");

        val materialManasteel = funcRegisterMaterial("Manasteel", "0073ff");
        val materialTerrasteel = funcRegisterMaterial("Terrasteel", "a8fd55");
        val materialElementium = funcRegisterMaterial("Elementium", "ef5cd0");

//部品の新規登録

//部品の登録
    //Dust, Small Dust
        val materialDust as Material[] = [
            //materialGraphite,
            materialGalliumArsenide,
            materialArsenic,
            materialIndium,
            materialIndiumGalliumPhosphide,

            materialAlumina,
            materialRutile,
            materialMangalloy,
            materialStainlessSteel,
            materialToolSteel,
            materialCobalt,
            materialCobaltite,
            materialNickelSilver,
            materialHafnium,
            materialTantalum,
            materialPottasiumHeptaChloroTantalate,
            materialTantalite,
            materialTungstenCarbide,
            materialTungstate,
            materialUraninite,

            materialRockSalt,

            materialBeryllium,
            materialMagnalium,
            materialMagnesia,

            materialNetherQuartz,
            materialCertusQuartz,

            materialRedAlloy,
        ];

        for i in materialDust {
            i.registerParts(["dust", "Small_dust"] as string[]);
        }

    //Casing
        val materialCasing as Material[] = [
            materialAluminum,
            materialTitanium,
            materialIron,
            materialStainlessSteel,
            materialSteel,
            materialCopper,
            materialBronze,
            materialTin,
            materialTungstensteel,
            materialGold,
            materialLead,
        ];

        for i in materialCasing {
            i.registerPart("casing");
        }

    //Gear
        val materialGear as Material[] = [
            materialTitanium,
            materialStainlessSteel,
            materialTungstensteel,
        ];

        for i in materialGear {
            i.registerPart("gear");
        }

    //Plate
        val materialPlate as Material[] = [
            materialMangalloy,
            materialStainlessSteel,
            materialToolSteel,
            materialCobalt,
            materialNickelSilver,
            materialTungstenCarbide,
            materialOsmium,
            materialBeryllium,
            materialNetherQuartz,
            materialCertusQuartz,
            materialRedAlloy,
            materialManasteel,
            materialTerrasteel,
            materialElementium,
        ];

        for i in materialPlate {
            i.registerPart("plate");
        }

    //Rod, Ring
        val materialRing as Material[] = [
            materialAluminum,
            materialTitanium,
            materialIron,
            materialStainlessSteel,
            materialSteel,
            materialCopper,
            materialBronze,
            materialTungstensteel,
            materialGold,
            materialManasteel,
            materialTerrasteel,
            materialElementium,
        ];

        for i in materialRing {
            i.registerParts(["rod", "ring"] as string[]);
        }

    //Ingot, Nugget, Block, Molten
        val materialMetal as Material[] = [
            materialTantalumHafniumCarbide,
            materialTungstenCarbide,
            //materialOsmium,
            materialBeryllium,
            materialMagnalium,
            //materialRedAlloy,
        ];

        for i in materialMetal {
            i.registerParts(["ingot", "nugget", "block", "molten"] as string[]);
        }

        materialGrout.registerPart("ingot");

    //Ore Sample
        val materialOreItem as Material[] = [
            //materialGraphite,
            materialSulfur,
            //materialBauxite,
            materialIron,
            materialCobaltite,
            materialCopper,
            materialTin,
            materialTantalite,
            materialTungstate,
            materialOsmium,
            materialGold,
            materialCinnabar,
            materialLead,
            materialGalena,
            materialUraninite,
            //materialSalt,
            materialRockSalt,
            materialMagnesia,
            materialNetherQuartz,
            materialCertusQuartz,
        ];

        for i in materialOreItem {
            i.registerPart("ore_sample" as string);
        }

    //Ore (Block)
        val materialOreBlock as Material[] = [
            //materialGraphite,
            materialCobaltite,
            materialUraninite,
            materialRockSalt,
            materialMagnesia,
        ];

        for i in materialOreBlock {
            i.registerPart("ore" as string);
        }

        //Tantalite
            materialTantalite.registerPart("ore" as string).getData().addDataValue("variants", "minecraft:netherrack");

        //Tungstate
            materialTungstate.registerPart("ore" as string).getData().addDataValue("variants", "minecraft:end_stone");

        //Sheldonite
            materialSheldonite.registerPart("ore" as string).getData().addDataValue("variants", "minecraft:end_stone");

    //Dust Block
        val materialBlockDust as Material[string] = {
            "cobalt": materialCobalt,
            "tantalum_hafnium_carbide": materialTantalumHafniumCarbide,
            "tungsten_carbide": materialTungstenCarbide,
            "platinum": materialPlatinum,
        };

    for i, j in materialBlockDust {
        RussellUtils.addBlockColored("dustblock_" ~ i, <blockmaterial:rock>, 1.5, 15.0, "shovel", 0, <soundtype:stone>, HexHelper.toHexString(j.getColor()));
    }

    //Liquid
        val materialLiquid as Material[] = [
            materialHydrogenHalide,
            materialHydrogenSulfide,
            materialHalogen,
            materialTitaniumTetrachloride,
        ];

        for i in materialLiquid {
            var liquid = mods.contenttweaker.VanillaFactory.createFluid(i.getName(), i.getColor());
            liquid.register();
        }

//このscriptの読み込みの完了をログに出力
print("materialRegistry.zs loaded!");