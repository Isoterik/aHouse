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
	case "life_inv_oilu": {(localize "STR_Item_OilU")};
	case "life_inv_oilp": {(localize "STR_Item_OilP")};
	case "life_inv_heroinu": {(localize "STR_Item_HeroinU")};
	case "life_inv_heroinp": {(localize "STR_Item_HeroinP")};
	case "life_inv_cannabis": {(localize "STR_Item_Cannabis")};
	case "life_inv_marijuana": {(localize "STR_Item_Marijuana")};
	case "life_inv_apple": {(localize "STR_Item_Apple")};
	case "life_inv_rabbit": {(localize "STR_Item_RabbitMeat")};
	case "life_inv_salema": {(localize "STR_Item_SalemaMeat")};
	case "life_inv_ornate": {(localize "STR_Item_OrnateMeat")};
	case "life_inv_mackerel": {(localize "STR_Item_MackerelMeat")};
	case "life_inv_tuna": {(localize "STR_Item_TunaMeat")};
	case "life_inv_mullet": {(localize "STR_Item_MulletMeat")};
	case "life_inv_catshark": {(localize "STR_Item_CatSharkMeat")};
	case "life_inv_turtle": {(localize "STR_Item_TurtleMeat")};
	case "life_inv_fishingpoles": {(localize "STR_Item_FishingPole")};
	case "life_inv_water": {(localize "STR_Item_WaterBottle")};
	case "life_inv_coffee": {(localize "STR_Item_Coffee")};
	case "life_inv_turtlesoup": {(localize "STR_Item_TurtleSoup")};
	case "life_inv_donuts": {(localize "STR_Item_Donuts")};
	case "life_inv_fuelE": {(localize "STR_Item_FuelE")};
	case "life_inv_fuelF": {(localize "STR_Item_FuelF")};
	case "life_inv_pickaxe": {(localize "STR_Item_Pickaxe")};
	case "life_inv_copperore": {(localize "STR_Item_CopperOre")};
	case "life_inv_ironore": {(localize "STR_Item_IronOre")};
	case "life_inv_ironr": {(localize "STR_Item_IronIngot")};
	case "life_inv_copperr": {(localize "STR_Item_CopperIngot")};
	case "life_inv_sand": {(localize "STR_Item_Sand")};
	case "life_inv_salt": {(localize "STR_Item_Salt")};
	case "life_inv_saltr": {(localize "STR_Item_SaltR")};
	case "life_inv_glass": {(localize "STR_Item_Glass")};
	case "life_inv_diamond": {(localize "STR_Item_DiamondU")};
	case "life_inv_diamondr": {(localize "STR_Item_DiamondC")};
	case "life_inv_tbacon": {(localize "STR_Item_TBacon")};
	case "life_inv_redgull": {(localize "STR_Item_RedGull")};
	case "life_inv_lockpick": {(localize "STR_Item_Lockpick")};
	case "life_inv_peach": {(localize "STR_Item_Peach")};
	case "life_inv_coke": {(localize "STR_Item_CocaineU")};
	case "life_inv_cokep": {(localize "STR_Item_CocaineP")};
	case "life_inv_spikeStrip": {(localize "STR_Item_SpikeStrip")};
	case "life_inv_rock": {(localize "STR_Item_Rock")};
	case "life_inv_cement": {(localize "STR_Item_CementBag")};
	case "life_inv_goldbar": {(localize "STR_Item_GoldBar")};
	case "life_inv_blastingcharge": {(localize "STR_Item_BCharge")};
	case "life_inv_boltcutter": {(localize "STR_Item_BCutter")};
	case "life_inv_defusekit": {(localize "STR_Item_DefuseKit")};
	case "life_inv_storagesmall": {(localize "STR_Item_StorageBS")};
	case "life_inv_storagebig": {(localize "STR_Item_StorageBL")};
	
	//Essen
	case "life_inv_apple": {"Apfel"};
	case "life_inv_peach": {"Pfirsich"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_goldendonat": {"Goldener Donut"};
	case "life_inv_rabbit": {"Hasenfleisch"};
	case "life_inv_tbacon": {"Speck"};
	case "life_inv_frogeat": {"Froschschenkel"};
	case "life_inv_mackerel": {"Makrelenfilet"};
	case "life_inv_ornate": {"Buschfischfilet"};
	case "life_inv_salema": {"Gelbstriemenbrassefilet"};
	case "life_inv_tuna": {"Thunfischfilet"};
	case "life_inv_mullet": {"Meeraeschenfilet"};
	case "life_inv_catshark": {"Katzenhaifilet"};
	case "life_inv_honeyu": {"Honigwabe"};
	case "life_inv_honeyp": {"Honig"};
	case "life_inv_cheeses": {"1kg Kaese"};
	case "life_inv_cheesep": {"Kaese"};
	case "life_inv_buns": {"10 Broetchen"};
	case "life_inv_bunp": {"Broetchen"};
	case "life_inv_cheesesticks": {"10 Kaesestangen"};
	case "life_inv_cheesestickp": {"Kaesestangen"};
	case "life_inv_sausage": {"Bratwurst"};
	case "life_inv_jailmeal": {"Knastmahlzeit"};

	//trinken
	case "life_inv_water": {"Wasserflasche"};
	case "life_inv_coffee": {"Kaffee"};
	case "life_inv_redgull": {"RedGull"};
	case "life_inv_beer": {"Bier"};
	case "life_inv_applewine": {"Apfelmost"};
	case "life_inv_wodka": {"Wodka"};
	case "life_inv_proteinshake": {"Proteinshake"};
	case "life_inv_milku": {"Frische Milch"};
	case "life_inv_milkp": {"Milch"};
	case "life_inv_milks": {"5l Milch"};
	case "life_inv_peachbooze": {"Pfirsichschnaps"};
	case "life_inv_pearbooze": {"Birnenschnaps"};
	case "life_inv_grape": {"Weintraube"};
	case "life_inv_wine": {"Wein"};


	//legal
	case "life_inv_oilu": {"Barrel Rohoel"};
	case "life_inv_oilp": {"Oel"};
	case "life_inv_copperore": {"Kupfererz"};
	case "life_inv_copperr": {"Kupferbarren"};
	case "life_inv_ironore": {"Eisenerz"};
	case "life_inv_ironr": {"Eisenbarren"};
	case "life_inv_silverore": {"Silbererz"};
	case "life_inv_silverbar": {"Silberbarren"};
	case "life_inv_goldore": {"Goldabraum"};
	case "life_inv_goldbar": {"Goldbarren"};
	case "life_inv_diamond": {"Diamantenabraum"};
	case "life_inv_diamondr": {"Diamant"};
	case "life_inv_sand": {"Quarzsand"};
	case "life_inv_glass": {"Glas"};
	case "life_inv_salt": {"Unreines Salz"};
	case "life_inv_saltr": {"Salz"};
	case "life_inv_rock": {"Stein"};
	case "life_inv_cement": {"Zementsack"};
	case "life_inv_woodu": {"Unbehandeltes Holz"};
	case "life_inv_woodp": {"Holz"};
	case "life_inv_cereals": {"Getreide"};
	case "life_inv_frog": {"Frosch"};
	case "life_inv_eyedrops": {"Augentropfen"};
	case "life_inv_pseudo": {"Pseudo"};
	case "life_inv_herps": {"500g Kraeuter"};
	case "life_inv_herpp": {"Kraeuter"};
	case "life_inv_eggs": {"10 Eier"};
	case "life_inv_eggp": {"Ei"};
	case "life_inv_butters": {"1kg Butter"};
	case "life_inv_butterp": {"Butter"};
	case "life_inv_flours": {"3kg Mehl"};
	case "life_inv_flourp": {"Mehl"};
	case "life_inv_hops": {"Hopfen"};
	case "life_inv_malt": {"Malz"};
	case "life_inv_potato": {"Kartoffel"};
	case "life_inv_pear": {"Birne"};
	case "life_inv_tabaccou": {"Tabakblaetter"};
	case "life_inv_tabaccop": {"Tabak"};
	case "life_inv_tabaccos": {"4 Tabakblaetter"};
	case "life_inv_cigar": {"Zigarre"};
	case "life_inv_caoutchouc": {"Kautschuk"};
	case "life_inv_rubber": {"Gummi"};
	case "life_inv_tyre": {"Reifen"};
	case "life_inv_cable": {"Elektronikkabel"};
	case "life_inv_metalparts": {"Metallteile"};
	case "life_inv_body": {"Karosserieteil"};
	case "life_inv_beef": {"2kg Rindfleisch"};
	case "life_inv_cowskin": {"Kuhhaut"};
	case "life_inv_leather": {"Leder"};
	case "life_inv_seats": {"Innenausstattung"};
	case "life_inv_antiques": {"Antiquitäten"};
	case "life_inv_trinket": {"Schmuck"};
	case "life_inv_medmarijuana": {"Medizinisches Marijuana"};
	
	//illegal
	case "life_inv_turtle": {"Schildkroetenfilet"};
	case "life_inv_turtlesoup": {"Schildkroetensuppe"};
	case "life_inv_heroinu": {"Unreines Heroin"};
	case "life_inv_heroinp": {"Heroin"};
	case "life_inv_coke": {"Unreines Kokain"};
	case "life_inv_cokep": {"Kokain"};

	case "life_inv_cokeps": {"Gestrecktes Kokain"};

	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_cannabis": {"Cannabis"};
	case "life_inv_froglsd": {"FreudenhausLSD"};
	case "life_inv_croco": {"Crocodile"};
	case "life_inv_methp": {"Meth"};
	case "life_inv_methu": {"Chemiekalien"};	

	//sonstiges
	case "life_inv_fishingpoles": {"Angel"};
	case "life_inv_lockpick": {"Dietrich"};
	case "life_inv_pickaxe": {"Spitzhacke"};
	case "life_inv_spikeStrip": {"Nagelband"};
	case "life_inv_fuelE": {"Leerer Benzinkanister"};
	case "life_inv_fuelF": {"Benzinkanister"};
	case "life_inv_storagesmall": {"Kleine Lagerkiste"};
	case "life_inv_storagebig": {"Grosse Lagerkiste"};
	case "life_inv_ziptie": {"Kabelbinder"};
	case "life_inv_goldbank": {"Bank Goldbarren"};
	//License Block
	case "license_civ_driver": {(localize "STR_License_Driver")};
	case "license_civ_air": {(localize "STR_License_Pilot")};
	case "license_civ_heroin": {(localize "STR_License_Heroin")};
	case "license_civ_oil": {(localize "STR_License_Oil")};
	case "license_civ_dive": {(localize "STR_License_Diving")};
	case "license_civ_boat": {(localize "STR_License_Boat")};
	case "license_civ_gun": {(localize "STR_License_Firearm")};
	case "license_cop_air": {(localize "STR_License_Pilot")};
	case "license_cop_swat": {(localize "STR_License_Swat")};
	case "license_cop_cg": {(localize "STR_License_CG")};
	case "license_civ_rebel": {(localize "STR_License_Rebel")};
	case "license_civ_truck": {(localize "STR_License_Truck")};
	case "license_civ_diamond": {(localize "STR_License_Diamond")};
	case "license_civ_copper": {(localize "STR_License_Copper")};
	case "license_civ_iron": {(localize "STR_License_Iron")};
	case "license_civ_sand": {(localize "STR_License_Sand")};
	case "license_civ_salt": {(localize "STR_License_Salt")};
	case "license_civ_coke": {(localize "STR_License_Cocaine")};
	case "license_civ_marijuana": {(localize "STR_License_Marijuana")};
	case "license_civ_cement": {(localize "STR_License_Cement")};
	case "license_med_air": {(localize "STR_License_Pilot")};
	case "license_civ_home": {(localize "STR_License_Home")};
	//Führerscheine Zivis
	case "license_civ_driver": {"Fuehrerschein"};
	case "license_civ_truck": {"LKW-Fuehrerschein"};
	case "license_civ_air": {"Flugschein"};
	case "license_civ_boat": {"Bootsschein"};

	//Führerscheine und Lizenzen Polizei
	case "license_cop_air": {"Fluglizenz Polizei"};
	case "license_cop_cg": {"Bootsschein Polizei"};
	case "license_cop_swat": {"SEK-Lizenz"};

	//Führerscheine und Lizenzen Ärzte
	case "license_med_air": {"Fluglizenz Arzt"};

	//Führerscheine und Lizenzen ADAC
	case "license_adac_truck": {"LKW-Fuehrerschein ATAC"};
	case "license_adac_air": {"Fluglizenz ATAC"};

	//Lizenzen legal
	case "license_civ_oil": {"Oelverarbeitung"};
	case "license_civ_diamond": {"Diamantenverarbeitung"};
	case "license_civ_copper": {"Kupferverarbeitung"};
	case "license_civ_iron": {"Eisenverarbeitung"};
	case "license_civ_gold": {"Goldverarbeitung"};
	case "license_civ_silver": {"Silberverarbeitung"};
	case "license_civ_sand": {"Sandverarbeitung"};
	case "license_civ_salt": {"Salzverarbeitung"};
	case "license_civ_cement": {"Zementverarbeitung"};
	case "license_civ_wood": {"Forstschein"};
	case "license_civ_frogeat": {"Froschverarbeitung"};
	case "license_civ_medmarijuana": {"Medi-Marijuhanaverarbeitung"};
	case "license_civ_honey": {"Honigverarbeitung"};
	case "license_civ_milk": {"Milchverarbeitung"};
	case "license_civ_flour": {"Getreideverarbeitung"};
	case "license_civ_beer": {"Bierlizenz"}; 
	case "license_civ_wodka": {"Wodkalizenz"};
	case "license_civ_peachbooze": {"Pfirsichschnapslizenz"}; 
	case "license_civ_pearbooze": {"Birnenschnapslizenz"}; 
	case "license_civ_applewine": {"Apfelmostlizenz"}; 
	case "license_civ_wine": {"Weinlizenz"}; 
	case "license_civ_tabacco": {"Tabakverarbeitung"}; 
	case "license_civ_rubber": {"Gummiverarbeitung"}; 
	case "license_civ_tyre": {"Reifenherstellung"}; 
	case "license_civ_cable": {"Kabelherstellung"};
	case "license_civ_body": {"Karosseriebauer"}; 
	case "license_civ_leather": {"Lederverarbeitung"};
	case "license_civ_seats": {"Polsterer"}; 
	case "license_civ_trinket": {"Juwelier"};
	case "license_civ_cheese": {"Kaese"};
	case "license_civ_butter": {"Butter"};
	case "license_civ_cigar": {"Zigarren"};
	case "license_civ_butcher": {"Metzger"};
	case "license_civ_baker": {"Baecker"};
	case "license_civ_factorio": {"Factorio"};

	//Lizenzen illegal
	case "license_civ_heroin": {"Heroinverarbeitung"};
	case "license_civ_coke": {"Kokainverarbeitung"};
	case "license_civ_marijuana": {"Marijuhanaverarbeitung"};
	case "license_civ_froglsd": {"LSD-Verarbeitung"};
	case "license_civ_croco": {"Crocodileverarbeitung"};
	case "license_civ_meth": {"Methverarbeitung"};

	//Lizenzen sonstiges
	case "license_civ_home": {"Einwohnermeldeschein"};
	case "license_civ_rebel": {"Rebellen-Ausbildung"};
	case "license_civ_gang": {"Gang-Lizenz"};
	case "license_civ_gun": {"Waffenschein"};
	case "license_civ_dive": {"Tauchschein"};

	//Factorio
	case "factorio_inv_tyre": {"Reifen"};
	case "factorio_inv_body": {"Karosserieteil"};
	case "factorio_inv_seats": {"Innenausstattung"};
	case "factorio_inv_cable": {"Elektronikkabel"};
	case "factorio_inv_glass": {"Glas"};
	case "factorio_inv_oilp": {"Oel"};			
};
