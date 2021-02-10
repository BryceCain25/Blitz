class CfgBlitz {
    class gamemode { 
        zoneMarker = "blitz_ao";
        maxAI = 10;
        respawnPositions[]={
            "rb_1","rb_2","rb_3","rb_4","rb_5","rb_6","rb_7","rb_8","rb_9","rb_10"
        };
    };
    class loadouts {
        class smg_1 {
            uniform = "U_BG_Guerrilla_6_1";
            backpack = "";
            vest = "V_TacVest_khk";
            weapons[] = {"SMG_03_TR_black","Binocular","Throw","Put"};
            magazines[] = {"50Rnd_570x28_SMG_03","50Rnd_570x28_SMG_03","APERSTripMine_Wire_Mag","APERSTripMine_Wire_Mag"};
            helmet = "H_HelmetB_light_desert";
            goggles = "G_Squares_Tinted";
            items[] = {};
            linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemGPS"};
        };
        class smg_2 {
            uniform = "U_BG_Guerrilla_6_1";
            backpack = "";
            vest = "V_TacVest_khk";
            weapons[]= {"SMG_01_Holo_F","Binocular","Throw","Put"};
            magazines[] = {"30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01","APERSTripMine_Wire_Mag","APERSTripMine_Wire_Mag"};
            helmet = "H_HelmetB_light_desert";
            goggles = "G_Squares_Tinted";
            items[] = { };
            linkedItems[] = {"IteMMap","ItemCompass","ItemWatch","ItemGPS"};
        };
        class smg_3 {
            uniform = "U_BG_Guerrilla_6_1";
            backpack = "";
            vest = "V_TacVest_khk";
            weapons[]= {"SMG_02_ARCO_pointg_F","Binocular","Throw","Put"};
            magazines[] = {"30Rnd_9x21_Mag_SMG_02","30Rnd_9x21_Mag_SMG_02","APERSTripMine_Wire_Mag","APERSTripMine_Wire_Mag"};
            helmet = "H_HelmetB_light_desert";
            goggles = "G_Squares_Tinted";
            items[] = { };
            linkedItems[] = {"IteMMap","ItemCompass","ItemWatch","ItemGPS"};
        };
        class smg_4 {
            uniform = "U_BG_Guerrilla_6_1";
            backpack = "";
            vest = "V_TacVest_khk";
            weapons[]= {"hgun_PDW2000_Holo_F","Binocular","Throw","Put"};
            magazines[] = {"30Rnd_9x21_Mag","30Rnd_9x21_Mag","APERSTripMine_Wire_Mag","APERSTripMine_Wire_Mag"};
            helmet = "H_HelmetB_light_desert";
            goggles = "G_Squares_Tinted";
            items[] = { };
            linkedItems[] = {"IteMMap","ItemCompass","ItemWatch","ItemGPS"};
        };
    };
};