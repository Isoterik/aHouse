/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	
	//Essen
	case "life_inv_apple": {(localize "STR_Item_Apple")};
	case "life_inv_peach": {(localize "STR_Item_Peach")};
	case "life_inv_donuts": {(localize "STR_Item_Donuts")};
	case "life_inv_goldendonat": {(localize "STR_Item_GoldenDonat")};
	case "life_inv_rabbit": {(localize "STR_Item_Rabbit")};
	case "life_inv_tbacon": {(localize "STR_Item_TBacon")};
	case "life_inv_frogeat": {(localize "STR_Item_FrogEat")};
	case "life_inv_mackerel": {(localize "STR_Item_MackerelMeat")};
	case "life_inv_ornate": {(localize "STR_Item_OrnateMeat")};
	case "life_inv_salema": {(localize "STR_Item_SalemaMeat")};
	case "life_inv_tuna": {(localize "STR_Item_TunaMeat")};
	case "life_inv_mullet": {(localize "STR_Item_MulletMeat")};
	case "life_inv_catshark": {(localize "STR_Item_CatSharkMeat")};
	case "life_inv_honeyu": {(localize "STR_Item_Honeycomb")};
	case "life_inv_honeyp": {(localize "STR_Item_Honey")};
	case "life_inv_cheeses": {(localize "STR_Item_1kgCheese")};
	case "life_inv_cheesep": {(localize "STR_Item_Cheese")};
	case "life_inv_buns": {(localize "STR_Item_10Buns")};
	case "life_inv_bunp": {(localize "STR_Item_Bun")};
	case "life_inv_cheesesticks": {(localize "STR_Item_10CheeseSticks")};
	case "life_inv_cheesestickp": {(localize "STR_Item_CheeseStick")};
	case "life_inv_sausage": {(localize "STR_Item_Sausage")};
	case "life_inv_jailmeal": {(localize "STR_Item_JailMeal")};

	//trinken
	case "life_inv_water": {(localize "STR_Item_WaterBottle")};
	case "life_inv_coffee": {(localize "STR_Item_Coffee")};
	case "life_inv_redgull": {(localize "STR_Item_RedGull")};
	case "life_inv_beer": {(localize "STR_Item_Beer")};
	case "life_inv_applewine": {(localize "STR_Item_Applewine")};
	case "life_inv_wodka": {(localize "STR_Item_Vodka")};
	case "life_inv_proteinshake": {(localize "STR_Item_ProteinShake")};
	case "life_inv_milku": {(localize "STR_Item_FreshMilk")};
	case "life_inv_milkp": {(localize "STR_Item_Milk")};
	case "life_inv_milks": {(localize "STR_Item_5lMilk")};
	case "life_inv_peachbooze": {(localize "STR_Item_Peachbooze")};
	case "life_inv_pearbooze": {(localize "STR_Item_Pearbooze")};
	case "life_inv_grape": {(localize "STR_Item_Grape")};
	case "life_inv_wine": {(localize "STR_Item_Wine")};

	//legal
	case "life_inv_oilu": {(localize "STR_Item_OilU")};
	case "life_inv_oilp": {(localize "STR_Item_OilP")};
	case "life_inv_copperore": {(localize "STR_Item_CopperOre")};
	case "life_inv_copperr": {(localize "STR_Item_CopperIngot")};
	case "life_inv_ironore": {(localize "STR_Item_IronOre")};
	case "life_inv_ironr": {(localize "STR_Item_IronIngot")};
	case "life_inv_silverore": {(localize "STR_Item_SilverOre")};
	case "life_inv_silverbar": {(localize "STR_Item_SilverIngot")};
	case "life_inv_goldore": {(localize "STR_Item_GoldTailings")};
	case "life_inv_goldbar": {(localize "STR_Item_GoldBar")};
	case "life_inv_diamond": {(localize "STR_Item_DiamondU")};
	case "life_inv_diamondr": {(localize "STR_Item_DiamondC")};
	case "life_inv_sand": {(localize "STR_Item_Sand")};
	case "life_inv_glass": {(localize "STR_Item_Glass")};
	case "life_inv_salt": {(localize "STR_Item_Salt")};
	case "life_inv_saltr": {(localize "STR_Item_SaltR")};
	case "life_inv_rock": {(localize "STR_Item_Rock")};
	case "life_inv_cement": {(localize "STR_Item_CementBag")};
	case "life_inv_woodu": {(localize "STR_Item_UntreatedWood")};
	case "life_inv_woodp": {(localize "STR_Item_Wood")};
	case "life_inv_cereals": {(localize "STR_Item_Cereals")};
	case "life_inv_frog": {(localize "STR_Item_Frog")};
	case "life_inv_eyedrops": {(localize "STR_Item_EyeDrops")};
	case "life_inv_pseudo": {(localize "STR_Item_Pseudo")};
	case "life_inv_herps": {(localize "STR_Item_Herbs500g")};
	case "life_inv_herpp": {(localize "STR_Item_Herbs")};
	case "life_inv_eggs": {(localize "STR_Item_10Eggs")};
	case "life_inv_eggp": {(localize "STR_Item_Egg")};
	case "life_inv_butters": {(localize "STR_Item_1kgButter")};
	case "life_inv_butterp": {(localize "STR_Item_Butter")};
	case "life_inv_flours": {(localize "STR_Item_3kgFlour")};
	case "life_inv_flourp": {(localize "STR_Item_Flour")};
	case "life_inv_hops": {(localize "STR_Item_Hops")};
	case "life_inv_malt": {(localize "STR_Item_Malt")};
	case "life_inv_potato": {(localize "STR_Item_Potato")};
	case "life_inv_pear": {(localize "STR_Item_Pear")};
	case "life_inv_tabaccou": {(localize "STR_Item_TobaccoLeaf")};
	case "life_inv_tabaccop": {(localize "STR_Item_Tobacco")};
	case "life_inv_tabaccos": {(localize "STR_Item_4TobaccoLeaf")};
	case "life_inv_cigar": {(localize "STR_Item_Cigar")};
	case "life_inv_caoutchouc": {(localize "STR_Item_Caoutchouc")};
	case "life_inv_rubber": {(localize "STR_Item_Rubber")};
	case "life_inv_tyre": {(localize "STR_Item_Tyre")};
	case "life_inv_cable": {(localize "STR_Item_ElectronicCables")};
	case "life_inv_metalparts": {(localize "STR_Item_Metalwork")};
	case "life_inv_body": {(localize "STR_Item_BodyPart")};
	case "life_inv_beef": {(localize "STR_Item_2kgBeef")};
	case "life_inv_cowskin": {(localize "STR_Item_Cowhide")};
	case "life_inv_leather": {(localize "STR_Item_Leather")};
	case "life_inv_seats": {(localize "STR_Item_InteriorDecoration")};
	case "life_inv_antiques": {(localize "STR_Item_Antiques")};
	case "life_inv_trinket": {(localize "STR_Item_Jewelry")};
	case "life_inv_medmarijuana": {(localize "STR_Item_MedicalMarijuana")};
	
	//illegal
	case "life_inv_turtle": {(localize "STR_Item_Turtle")};
	case "life_inv_turtlesoup": {(localize "STR_Item_TurtleSoup")};
	case "life_inv_heroinu": {(localize "STR_Item_HeroinU")};
	case "life_inv_heroinp": {(localize "STR_Item_HeroinP")};
	case "life_inv_coke": {(localize "STR_Item_CocaineU")};
	case "life_inv_cokep": {(localize "STR_Item_CocaineP")};
	case "life_inv_cokeps": {(localize "STR_Item_StretchedCocaine")};
	case "life_inv_cannabis": {(localize "STR_Item_Cannabis")};
	case "life_inv_marijuana": {(localize "STR_Item_Marijuana")};
	case "life_inv_froglsd": {(localize "STR_Item_FreudenhausLSD")};
	case "life_inv_croco": {(localize "STR_Item_Crocodile")};
	case "life_inv_methp": {(localize "STR_Item_Meth")};
	case "life_inv_methu": {(localize "STR_Item_Chemicals")};

	//sonstiges
	case "life_inv_fishingpoles": {(localize "STR_Item_FishingPole")};
	case "life_inv_lockpick": {(localize "STR_Item_Lockpick")};
	case "life_inv_pickaxe": {(localize "STR_Item_Pickaxe")};
	case "life_inv_spikeStrip": {(localize "STR_Item_SpikeStrip")};
	case "life_inv_fuelE": {(localize "STR_Item_FuelE")};
	case "life_inv_fuelF": {(localize "STR_Item_FuelF")};
	case "life_inv_blastingcharge": {(localize "STR_Item_BCharge")};
	case "life_inv_boltcutter": {(localize "STR_Item_BCutter")};
	case "life_inv_defusekit": {(localize "STR_Item_DefuseKit")};
	case "life_inv_storagesmall": {(localize "STR_Item_StorageBS")};
	case "life_inv_storagebig": {(localize "STR_Item_StorageBL")};
	case "life_inv_ziptie": {(localize "STR_Item_CableTies")};
	case "life_inv_goldbank": {(localize "STR_Item_BankGoldBars")};


	//License Block
	
	//Führerscheine Zivis
	case "license_civ_driver": {(localize "STR_License_Driver")};
	case "license_civ_truck": {(localize "STR_License_Truck")};
	case "license_civ_air": {(localize "STR_License_Pilot")};
	case "license_civ_boat": {(localize "STR_License_Boat")};

	//Führerscheine und Lizenzen Polizei
	case "license_cop_air": {(localize "STR_License_Pilot")};
	case "license_cop_cg": {(localize "STR_License_CG")};
	case "license_cop_swat": {(localize "STR_License_Swat")};

	//Führerscheine und Lizenzen Ärzte
	case "license_med_air": {(localize "STR_License_Pilot")};

	//Führerscheine und Lizenzen ADAC
	case "license_adac_truck": {(localize "STR_License_Truck")};
	case "license_adac_air": {(localize "STR_License_Pilot")};

	//Lizenzen legal
	case "license_civ_oil": {(localize "STR_License_Oil")};
	case "license_civ_diamond": {(localize "STR_License_Diamond")};
	case "license_civ_copper": {(localize "STR_License_Copper")};
	case "license_civ_iron": {(localize "STR_License_Iron")};
	case "license_civ_gold": {(localize "STR_License_Gold")};
	case "license_civ_silver": {(localize "STR_License_Silver")};
	case "license_civ_sand": {(localize "STR_License_Sand")};
	case "license_civ_salt": {(localize "STR_License_Salt")};
	case "license_civ_cement": {(localize "STR_License_Cement")};
	case "license_civ_wood": {(localize "STR_License_Forestry")};
	case "license_civ_frogeat": {(localize "STR_License_FrogProcessing")};
	case "license_civ_medmarijuana": {(localize "STR_License_MedicalMarijuanaProcessing")};
	case "license_civ_honey": {(localize "STR_License_HoneyProcessing")};
	case "license_civ_milk": {(localize "STR_License_MilkProcessing")};
	case "license_civ_flour": {(localize "STR_License_CerealsProcessing")};
	case "license_civ_beer": {(localize "STR_License_BeerLicense")};
	case "license_civ_wodka": {(localize "STR_License_VodkaLicense")};
	case "license_civ_peachbooze": {(localize "STR_License_PeachBoozeLicense")}; 
	case "license_civ_pearbooze": {(localize "STR_License_PearBoozeLicense")};
	case "license_civ_applewine": {(localize "STR_License_CiderLicense")};
	case "license_civ_wine": {(localize "STR_License_WineLicense")};
	case "license_civ_tabacco": {(localize "STR_License_TobaccoProcessing")};
	case "license_civ_rubber": {(localize "STR_License_RubberProcessing")};
	case "license_civ_tyre": {(localize "STR_License_TireManufacturing")}; 
	case "license_civ_cable": {(localize "STR_License_CableManufacturing")};
	case "license_civ_body": {(localize "STR_License_Coachbuilder")};
	case "license_civ_leather": {(localize "STR_License_LeatherProcessing")};
	case "license_civ_seats": {(localize "STR_License_Upholsterer")};
	case "license_civ_trinket": {(localize "STR_License_Jeweler")};
	case "license_civ_cheese": {(localize "STR_License_CheeseProcessing")};
	case "license_civ_butter": {(localize "STR_License_ButterProcessing")};
	case "license_civ_cigar": {(localize "STR_License_CigarsProcessing")};
	case "license_civ_butcher": {(localize "STR_License_Butcher")};
	case "license_civ_baker": {(localize "STR_License_Baker")};
	case "license_civ_factorio": {(localize "STR_License_Factorio")};

	//Lizenzen illegal
	case "license_civ_heroin": {(localize "STR_License_Heroin")};
	case "license_civ_coke": {(localize "STR_License_Cocaine")};
	case "license_civ_marijuana": {(localize "STR_License_Marijuana")};
	case "license_civ_froglsd": {(localize "STR_License_LSDprocessing")};
	case "license_civ_croco": {(localize "STR_License_CrocodileProcessing")};
	case "license_civ_meth": {(localize "STR_License_MethProcessing")};

	//Lizenzen sonstiges
	case "license_civ_home": {(localize "STR_License_Home")};
	case "license_civ_rebel": {(localize "STR_License_Rebel")};
	case "license_civ_gang": {(localize "STR_License_GangLicense")};
	case "license_civ_gun": {(localize "STR_License_Firearm")};
	case "license_civ_dive": {(localize "STR_License_Diving")};

	//Factorio
	case "factorio_inv_tyre": {(localize "STR_Item_Tyre")};
	case "factorio_inv_body": {(localize "STR_Item_BodyPart")};
	case "factorio_inv_seats": {(localize "STR_Item_InteriorDecoration")};
	case "factorio_inv_cable": {(localize "STR_Item_ElectronicCables")};
	case "factorio_inv_glass": {(localize "STR_Item_Glass")};
	case "factorio_inv_oilp": {(localize "STR_Item_OilP")};		
};
