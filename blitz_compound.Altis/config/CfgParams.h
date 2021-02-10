class Params {
    class b_title {
        title = "==== BLITZ SETTINGS ====";
        texts[]={""};
        values[]={0};
    };
     class b_matchDuration {
        title = "Match Duration (Minutes)";
        values[]={5,10,15,20,25};
        default = 15;
    };
    class b_blitzedSpeed {
        title = "Blitzed Player Speed";
        texts[]={"1.5x","2x","2.5x","3x"};
        values[]={1.5,2,2.5,3};
        default = 2;
    };
    class b_blitzedTime {
        title = "Blitzed Player Time";
        values[]={30,40,50,60,70,80,90,100};
        default = 40;
    };
    class b_terrainQuality {
        title = "Terrain Quality";
        values[]={50,25,12.5,6.25,3.125};
        default = 50;
    };
    class b_viewDistance {
        title = "View Distance";
        values[]={500,1000,1500,2000};
        default = 500;
    };
    class b_objectView {
        title = "Object ViewDistance";
        values[]={500,1000,1500,2000};
        default = 500; 
    };
    class b_enableFatigue {
        title = "Enable Fatigue";
        values[]={1,0};
        texts[]={"True","False"};
        default = 0;
    };
    class b_showGPS { 
        title = "Show GPS On Respawn";
        values[]={1,0};
        texts[]={"True","False"};
        default = 1;
    };
    class b_unlimitedAmmo {
        title = "Allow Unlimited Ammo";
        values[]={1,0};
        texts[]={"True","False"};
        default = 1;
    };
    class b_forceView {
        title = "Force View Mode";
        values[]={1,2,3,4};
        texts[]={"First Person","Third Person","Optics Only","No Restriction"};
        default = 4;
    };
    class b_enableAI {
        title = "Enable AI";
        texts[]={"True","False"};
        values[]={1,0};
        default = 0;
    };
};