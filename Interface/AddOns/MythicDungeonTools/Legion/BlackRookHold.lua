local MDT = MDT
local L = MDT.L
local dungeonIndex = 1
MDT.dungeonList[dungeonIndex] = L["Black Rook Hold"]
local nerfMultiplier = 0.834
local pi = math.pi

MDT.dungeonMaps[dungeonIndex] = {
    [0]= "BlackRookHoldDungeon",
    [1]= "BlackRookHoldDungeon1_",
    [2]= "BlackRookHoldDungeon2_",
    [3]= "BlackRookHoldDungeon3_",
    [4]= "BlackRookHoldDungeon4_",
    [5]= "BlackRookHoldDungeon5_",
    [6]= "BlackRookHoldDungeon6_",
}
MDT.dungeonSubLevels[dungeonIndex] = {
    [1] = L["The Ravenscrypt"],
    [2] = L["The Grand Hall"],
    [3] = L["Ravenshold"],
    [4] = L["The Rook's Host"],
    [5] = L["Lord Ravencrest's Chamber"],
    [6] = L["The Raven's Crown"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal=312, teeming=360, teemingEnabled=true}

MDT.dungeonEnemies[dungeonIndex] = {
    [1] = {
       ["clones"] = {
          [1] = {
             ["y"] = -116.95565215215;
             ["x"] = 209.98629733844;
             ["g"] = 1;
             ["sublevel"] = 1;
          };
          [2] = {
             ["y"] = -132.86472065678;
             ["x"] = 204.98630883858;
             ["g"] = 35;
             ["sublevel"] = 1;
          };
          [3] = {
             ["y"] = -162.69468952815;
             ["x"] = 184.08745446019;
             ["sublevel"] = 1;
          };
          [4] = {
             ["y"] = -220.00960841426;
             ["x"] = 160.95042250865;
             ["g"] = 2;
             ["sublevel"] = 1;
          };
          [5] = {
             ["y"] = -114.55769503399;
             ["x"] = 294.52988815315;
             ["g"] = 3;
             ["sublevel"] = 1;
          };
          [6] = {
             ["y"] = -108.64858402211;
             ["x"] = 293.16615561768;
             ["g"] = 3;
             ["sublevel"] = 1;
          };
          [7] = {
             ["y"] = -111.81419731691;
             ["x"] = 326.99855975888;
             ["g"] = 4;
             ["sublevel"] = 1;
          };
          [8] = {
             ["y"] = -131.8141903303;
             ["x"] = 317.45313426169;
             ["g"] = 4;
             ["sublevel"] = 1;
          };
          [9] = {
             ["y"] = -150.68082076884;
             ["x"] = 353.06159105541;
             ["g"] = 5;
             ["sublevel"] = 1;
          };
          [10] = {
             ["y"] = -202.15734397773;
             ["x"] = 416.87929765038;
             ["g"] = 6;
             ["sublevel"] = 1;
          };
          [11] = {
             ["y"] = -213.0664239825;
             ["x"] = 420.51567065662;
             ["g"] = 6;
             ["sublevel"] = 1;
          };
          [12] = {
             ["y"] = -137.95454467424;
             ["x"] = 209.54507885725;
             ["teeming"] = true;
             ["g"] = 35;
             ["sublevel"] = 1;
          };
          [13] = {
             ["y"] = -147.82117311179;
             ["x"] = 347.74311836916;
             ["teeming"] = true;
             ["g"] = 5;
             ["sublevel"] = 1;
          };
          [14] = {
             ["y"] = -205.45725716437;
             ["x"] = 155.88584041655;
             ["teeming"] = true;
             ["g"] = 2;
             ["sublevel"] = 1;
          };
       };
       ["id"] = 98366;
       ["count"] = 4;
       ["name"] = "Ghostly Retainer";
       ["health"] = 12359293.698;
       ["displayId"] = 65785;
       ["creatureType"] = "Undead";
       ["level"] = 110;
       ["scale"] = 1;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [2] = {
       ["clones"] = {
          [1] = {
             ["y"] = -120.59200565142;
             ["x"] = 201.34991632537;
             ["g"] = 1;
             ["sublevel"] = 1;
          };
          [2] = {
             ["y"] = -203.52322713666;
             ["x"] = 164.05718794928;
             ["g"] = 2;
             ["sublevel"] = 1;
          };
          [3] = {
             ["y"] = -120.68083124876;
             ["x"] = 327.75247814021;
             ["g"] = 4;
             ["sublevel"] = 1;
          };
          [4] = {
             ["y"] = -142.04443975577;
             ["x"] = 360.33429805394;
             ["g"] = 5;
             ["sublevel"] = 1;
          };
          [5] = {
             ["y"] = -179.0878963561;
             ["x"] = 424.30196291791;
             ["teeming"] = true;
             ["g"] = 6;
             ["sublevel"] = 1;
          };
          [6] = {
             ["y"] = -220.90608839297;
             ["x"] = 425.21102690901;
             ["teeming"] = true;
             ["g"] = 6;
             ["sublevel"] = 1;
          };
          [7] = {
             ["y"] = -161.69547433509;
             ["x"] = 197.72679738124;
             ["sublevel"] = 1;
             ["teeming"] = true;
          };
       };
       ["id"] = 98368;
       ["count"] = 4;
       ["name"] = "Ghostly Protector";
       ["health"] = 20457127.62;
       ["displayId"] = 65786;
       ["creatureType"] = "Undead";
       ["level"] = 111;
       ["scale"] = 1;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [3] = {
       ["clones"] = {
          [1] = {
             ["y"] = -129.68289915307;
             ["x"] = 215.89538884335;
             ["sublevel"] = 1;
          };
          [2] = {
             ["y"] = -155.64838122709;
             ["x"] = 174.87987038334;
             ["sublevel"] = 1;
          };
          [3] = {
             ["y"] = -169.8589173035;
             ["x"] = 194.35354454595;
             ["sublevel"] = 1;
          };
          [4] = {
             ["y"] = -226.7027767885;
             ["x"] = 160.45110582898;
             ["g"] = 2;
             ["sublevel"] = 1;
          };
          [5] = {
             ["y"] = -117.49902925202;
             ["x"] = 335.93428814378;
             ["g"] = 4;
             ["sublevel"] = 1;
          };
          [6] = {
             ["y"] = -152.04445576944;
             ["x"] = 362.15242603613;
             ["patrol"] = {
                [1] = {
                   ["y"] = -99.354561671759;
                   ["x"] = 292.28939446176;
                };
                [2] = {
                   ["y"] = -184.35458074609;
                   ["x"] = 406.83485155365;
                };
             };
             ["sublevel"] = 1;
             ["g"] = 5;
             ["patrolFacing"] = 0.78539816339745;
             ["patrolFacing2"] = 4.319689898686;
          };
          [7] = {
             ["y"] = -187.15735897118;
             ["x"] = 420.0611191541;
             ["g"] = 6;
             ["sublevel"] = 1;
          };
          [8] = {
             ["y"] = -138.73029911712;
             ["x"] = 354.10676137659;
             ["teeming"] = true;
             ["g"] = 5;
             ["sublevel"] = 1;
          };
          [9] = {
             ["y"] = -196.36638316969;
             ["x"] = 151.79493541476;
             ["teeming"] = true;
             ["g"] = 2;
             ["sublevel"] = 1;
          };
       };
       ["id"] = 98370;
       ["count"] = 4;
       ["name"] = "Ghostly Councilor";
       ["health"] = 12359293.698;
       ["displayId"] = 65787;
       ["creatureType"] = "Undead";
       ["level"] = 110;
       ["scale"] = 1;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [4] = {
       ["clones"] = {
          [1] = {
             ["y"] = -44.77177738622;
             ["x"] = 247.82068333804;
             ["sublevel"] = 1;
          };
          [2] = {
             ["y"] = -325.98770768027;
             ["x"] = 288.388632398;
             ["sublevel"] = 1;
          };
       };
       ["id"] = 98362;
       ["count"] = 0;
       ["name"] = "Troubled Soul";
       ["health"] = 2471858.406;
       ["displayId"] = 65812;
       ["creatureType"] = "Undead";
       ["level"] = 110;
       ["scale"] = 1;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [5] = {
       ["clones"] = {
          [1] = {
             ["y"] = -202.04451173431;
             ["x"] = 431.87574465497;
             ["g"] = 6;
             ["sublevel"] = 1;
          };
       };
       ["id"] = 98521;
       ["count"] = 10;
       ["name"] = "Lord Etheldrin Ravencrest";
       ["health"] = 30685693.098;
       ["displayId"] = 65814;
       ["creatureType"] = "Undead";
       ["level"] = 111;
       ["scale"] = 1.4;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [6] = {
       ["clones"] = {
          [1] = {
             ["y"] = -214.2201248976;
             ["x"] = 149.37145547534;
             ["g"] = 2;
             ["sublevel"] = 1;
          };
       };
       ["id"] = 98538;
       ["count"] = 10;
       ["name"] = "Lady Velandras Ravencrest";
       ["health"] = 22277813.004;
       ["displayId"] = 65833;
       ["creatureType"] = "Undead";
       ["level"] = 111;
       ["scale"] = 1.4;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [7] = {
       ["clones"] = {
          [1] = {
             ["y"] = -502.49911465657;
             ["x"] = 550.66485859074;
             ["g"] = 7;
             ["sublevel"] = 1;
          };
          [2] = {
             ["y"] = -516.58999818514;
             ["x"] = 543.84666334189;
             ["g"] = 7;
             ["sublevel"] = 1;
          };
          [3] = {
             ["y"] = -511.13549660559;
             ["x"] = 532.02844003736;
             ["g"] = 7;
             ["sublevel"] = 1;
          };
          [4] = {
             ["y"] = -509.31729039845;
             ["x"] = 519.30119165717;
             ["g"] = 7;
             ["sublevel"] = 1;
          };
          [5] = {
             ["y"] = -499.31729280804;
             ["x"] = 521.57387138819;
             ["g"] = 7;
             ["sublevel"] = 1;
          };
          [6] = {
             ["y"] = -230.50707673596;
             ["x"] = 128.63296812739;
             ["g"] = 10;
             ["sublevel"] = 2;
          };
          [7] = {
             ["y"] = -239.59798974458;
             ["x"] = 132.26932162665;
             ["g"] = 10;
             ["sublevel"] = 2;
          };
          [8] = {
             ["y"] = -473.40812976454;
             ["x"] = 576.68538043691;
             ["sublevel"] = 1;
          };
          [9] = {
             ["y"] = -476.06023483733;
             ["x"] = 563.09123840476;
             ["sublevel"] = 1;
          };
          [10] = {
             ["y"] = -489.31723853935;
             ["x"] = 544.44630201189;
             ["g"] = 8;
             ["sublevel"] = 1;
          };
          [11] = {
             ["y"] = -485.68084602614;
             ["x"] = 548.08271403207;
             ["g"] = 8;
             ["sublevel"] = 1;
          };
          [12] = {
             ["y"] = -488.86266752986;
             ["x"] = 550.80986699142;
             ["g"] = 8;
             ["sublevel"] = 1;
          };
          [13] = {
             ["y"] = -490.22628302348;
             ["x"] = 548.08271403207;
             ["g"] = 8;
             ["sublevel"] = 1;
          };
          [14] = {
             ["y"] = -493.86267553669;
             ["x"] = 549.90084201427;
             ["g"] = 8;
             ["sublevel"] = 1;
          };
          [15] = {
             ["y"] = -482.4990440294;
             ["x"] = 552.57770420934;
             ["sublevel"] = 1;
          };
          [16] = {
             ["y"] = -479.77177402821;
             ["x"] = 556.66858970415;
             ["sublevel"] = 1;
          };
          [17] = {
             ["y"] = -180.21264563374;
             ["x"] = 184.99649298724;
             ["g"] = 9;
             ["sublevel"] = 2;
          };
          [18] = {
             ["y"] = -180.21264563374;
             ["x"] = 173.63286147995;
             ["g"] = 9;
             ["sublevel"] = 2;
          };
          [19] = {
             ["y"] = -190.81200719233;
             ["x"] = 161.36016598156;
             ["g"] = 9;
             ["sublevel"] = 2;
          };
       };
       ["id"] = 98677;
       ["count"] = 1;
       ["name"] = "Rook Spiderling";
       ["health"] = 1483115.544;
       ["displayId"] = 35688;
       ["creatureType"] = "Beast";
       ["level"] = 110;
       ["scale"] = 0.6;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [8] = {
       ["clones"] = {
          [1] = {
             ["y"] = -232.95923529183;
             ["x"] = 135.45113337688;
             ["g"] = 10;
             ["sublevel"] = 2;
          };
       };
       ["id"] = 98681;
       ["count"] = 6;
       ["name"] = "Rook Spinner";
       ["health"] = 20457127.62;
       ["displayId"] = 42742;
       ["creatureType"] = "Beast";
       ["level"] = 111;
       ["scale"] = 1;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [9] = {
       ["clones"] = {
          [1] = {
             ["y"] = -173.17364653278;
             ["x"] = 216.79933408203;
             ["patrol"] = {
                [1] = {
                   ["y"] = -184.08484933298;
                   ["x"] = 210.19961349338;
                };
                [2] = {
                   ["y"] = -196.35758384532;
                   ["x"] = 217.47243753375;
                };
                [3] = {
                   ["y"] = -184.08484933298;
                   ["x"] = 210.19961349338;
                };
                [4] = {
                   ["y"] = -130.4484742863;
                   ["x"] = 239.74514904581;
                };
                [5] = {
                   ["y"] = -184.08484933298;
                   ["x"] = 210.19961349338;
                };
             };
             ["sublevel"] = 2;
             ["g"] = 11;
             ["patrolFacing"] = 2.5525440310417;
             ["patrolFacing2"] = 5.8904862254809;
          };
          [2] = {
             ["y"] = -130.54452921552;
             ["x"] = 245.54683342287;
             ["g"] = 12;
             ["sublevel"] = 2;
          };
          [3] = {
             ["y"] = -191.13526840096;
             ["x"] = 315.27961073261;
             ["g"] = 13;
             ["sublevel"] = 2;
          };
          [4] = {
             ["y"] = -423.31871257288;
             ["x"] = 415.16192117353;
             ["g"] = 17;
             ["sublevel"] = 2;
          };
          [5] = {
             ["y"] = -118.86360741567;
             ["x"] = 243.10864006406;
             ["teeming"] = true;
             ["g"] = 12;
             ["sublevel"] = 2;
          };
       };
       ["id"] = 98243;
       ["count"] = 4;
       ["name"] = "Soul-Torn Champion";
       ["health"] = 17303012.178;
       ["displayId"] = 65762;
       ["creatureType"] = "Undead";
       ["level"] = 110;
       ["scale"] = 1;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [10] = {
       ["clones"] = {
          [1] = {
             ["y"] = -176.90136812552;
             ["x"] = 219.27853941775;
             ["g"] = 11;
             ["sublevel"] = 2;
          };
          [2] = {
             ["y"] = -197.53882532885;
             ["x"] = 301.11589772708;
             ["g"] = 13;
             ["sublevel"] = 2;
          };
          [3] = {
             ["y"] = -210.04996311254;
             ["x"] = 353.70383404629;
             ["g"] = 14;
             ["sublevel"] = 2;
          };
          [4] = {
             ["y"] = -234.94778333439;
             ["x"] = 398.35757296803;
             ["g"] = 15;
             ["sublevel"] = 2;
          };
          [5] = {
             ["y"] = -184.73135581813;
             ["x"] = 388.73140148194;
             ["g"] = 16;
             ["sublevel"] = 2;
          };
          [6] = {
             ["y"] = -257.45862875476;
             ["x"] = 335.09502062257;
             ["g"] = 16;
             ["sublevel"] = 2;
          };
          [7] = {
             ["y"] = -179.21529453413;
             ["x"] = 325.59963050002;
             ["teeming"] = true;
             ["g"] = 13;
             ["sublevel"] = 2;
          };
       };
       ["id"] = 98691;
       ["count"] = 4;
       ["name"] = "Risen Scout";
       ["health"] = 12359293.698;
       ["displayId"] = 65950;
       ["creatureType"] = "Undead";
       ["level"] = 110;
       ["scale"] = 1;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [11] = {
       ["clones"] = {
          [1] = {
             ["y"] = -125.68082779961;
             ["x"] = 237.67744989255;
             ["g"] = 12;
             ["sublevel"] = 2;
          };
          [2] = {
             ["y"] = -174.35701081174;
             ["x"] = 316.11590224061;
             ["g"] = 13;
             ["sublevel"] = 2;
          };
          [3] = {
             ["y"] = -259.73065391184;
             ["x"] = 393.99983745707;
             ["g"] = 15;
             ["sublevel"] = 2;
          };
          [4] = {
             ["y"] = -247.00332888303;
             ["x"] = 403.99985347074;
             ["g"] = 15;
             ["sublevel"] = 2;
          };
          [5] = {
             ["y"] = -227.45861647654;
             ["x"] = 442.36782135525;
             ["g"] = 16;
             ["sublevel"] = 2;
          };
          [6] = {
             ["y"] = -297.45861911641;
             ["x"] = 391.0041202269;
             ["g"] = 16;
             ["sublevel"] = 2;
          };
          [7] = {
             ["y"] = -419.6344752559;
             ["x"] = 427.26721105027;
             ["g"] = 17;
             ["sublevel"] = 2;
          };
          [8] = {
             ["y"] = -437.00288063181;
             ["x"] = 420.95138210316;
             ["g"] = 17;
             ["sublevel"] = 2;
          };
          [9] = {
             ["y"] = -119.77267140677;
             ["x"] = 250.38138607653;
             ["teeming"] = true;
             ["g"] = 12;
             ["sublevel"] = 2;
          };
          [10] = {
             ["y"] = -203.30621205627;
             ["x"] = 312.87234448516;
             ["teeming"] = true;
             ["g"] = 13;
             ["sublevel"] = 2;
          };
       };
       ["id"] = 98275;
       ["count"] = 4;
       ["name"] = "Risen Archer";
       ["health"] = 12359293.698;
       ["displayId"] = 65743;
       ["creatureType"] = "Undead";
       ["level"] = 110;
       ["scale"] = 1;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [12] = {
       ["clones"] = {
          [1] = {
             ["y"] = -124.59042801363;
             ["x"] = 255.47386299599;
             ["g"] = 12;
             ["sublevel"] = 2;
          };
          [2] = {
             ["y"] = -261.29172534572;
             ["x"] = 383.79397891048;
             ["g"] = 15;
             ["sublevel"] = 2;
          };
       };
       ["id"] = 98280;
       ["count"] = 4;
       ["name"] = "Risen Arcanist";
       ["health"] = 12359293.698;
       ["displayId"] = 65718;
       ["creatureType"] = "Undead";
       ["level"] = 110;
       ["scale"] = 1;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [13] = {
       ["clones"] = {
          [1] = {
             ["y"] = -126.40859520682;
             ["x"] = 263.65567388624;
             ["g"] = 12;
             ["sublevel"] = 2;
          };
          [2] = {
             ["y"] = -258.82151189284;
             ["x"] = 376.27264097024;
             ["g"] = 15;
             ["sublevel"] = 2;
          };
       };
       ["id"] = 101549;
       ["count"] = 1;
       ["name"] = "Arcane Minion";
       ["health"] = 2471858.406;
       ["displayId"] = 67018;
       ["creatureType"] = "Aberration";
       ["level"] = 110;
       ["scale"] = 0.6;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [14] = {
       ["clones"] = {
          [1] = {
             ["y"] = -216.35014538687;
             ["x"] = 350.16398783331;
             ["patrol"] = {
                [1] = {
                   ["y"] = -195.04999761296;
                   ["x"] = 321.43114553451;
                };
                [2] = {
                   ["y"] = -243.68634514584;
                   ["x"] = 387.34017706564;
                };
             };
             ["sublevel"] = 2;
             ["g"] = 14;
             ["patrolFacing"] = 0.88357293382213;
             ["patrolFacing2"] = 4.1233403578366;
          };
       };
       ["id"] = 101839;
       ["count"] = 4;
       ["name"] = "Risen Companion";
       ["health"] = 9887435.292;
       ["displayId"] = 64620;
       ["creatureType"] = "Undead";
       ["level"] = 110;
       ["scale"] = 1;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [15] = {
       ["clones"] = {
          [1] = {
             ["y"] = -289.1205608297;
             ["x"] = 449.33411342313;
             ["g"] = 16;
             ["sublevel"] = 2;
          };
       };
       ["id"] = 98706;
       ["count"] = 6;
       ["name"] = "Commander Shemdah'sohn";
       ["health"] = 20457127.62;
       ["displayId"] = 65954;
       ["creatureType"] = "Undead";
       ["level"] = 111;
       ["scale"] = 1.4;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [16] = {
       ["clones"] = {
          [1] = {
             ["y"] = -387.16699477943;
             ["x"] = 513.27366843331;
             ["g"] = 18;
             ["sublevel"] = 3;
          };
          [2] = {
             ["y"] = -387.87455872544;
             ["x"] = 474.84298897011;
             ["g"] = 18;
             ["sublevel"] = 3;
          };
          [3] = {
             ["y"] = -376.96547872068;
             ["x"] = 450.29751994544;
             ["g"] = 18;
             ["sublevel"] = 3;
          };
          [4] = {
             ["y"] = -348.77767035794;
             ["x"] = 454.37429886188;
             ["g"] = 18;
             ["sublevel"] = 3;
          };
          [5] = {
             ["y"] = -261.4265260725;
             ["x"] = 402.04231344989;
             ["g"] = 20;
             ["sublevel"] = 3;
          };
          [6] = {
             ["y"] = -274.58279940088;
             ["x"] = 339.98074073498;
             ["g"] = 21;
             ["sublevel"] = 3;
          };
          [7] = {
             ["y"] = -226.85553536608;
             ["x"] = 326.7989032176;
             ["g"] = 21;
             ["sublevel"] = 3;
          };
          [8] = {
             ["y"] = -490.68063658271;
             ["x"] = 331.65041225661;
             ["g"] = 25;
             ["sublevel"] = 3;
          };
          [9] = {
             ["y"] = -491.13518808523;
             ["x"] = 350.28675076242;
             ["g"] = 25;
             ["sublevel"] = 3;
          };
          [10] = {
             ["y"] = -462.4987945518;
             ["x"] = 368.92312828219;
             ["g"] = 25;
             ["sublevel"] = 3;
          };
          [11] = {
             ["y"] = -436.58969052653;
             ["x"] = 357.5594967749;
             ["g"] = 24;
             ["sublevel"] = 3;
          };
          [12] = {
             ["y"] = -413.57760623831;
             ["x"] = 349.94951172969;
             ["g"] = 24;
             ["sublevel"] = 3;
          };
          [13] = {
             ["y"] = -416.80536709987;
             ["x"] = 325.44465053777;
             ["g"] = 26;
             ["sublevel"] = 4;
          };
       };
       ["id"] = 98900;
       ["count"] = 3;
       ["name"] = "Wyrmtongue Trickster";
       ["health"] = 4943717.646;
       ["displayId"] = 64483;
       ["creatureType"] = "Demon";
       ["level"] = 110;
       ["scale"] = 1;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [17] = {
       ["clones"] = {
          [1] = {
             ["y"] = -281.81662864068;
             ["x"] = 476.62940868524;
             ["patrol"] = {
                [1] = {
                   ["y"] = -281.81662864068;
                   ["x"] = 476.62940868524;
                };
                [2] = {
                   ["y"] = -235.68169558854;
                   ["x"] = 421.47985769165;
                };
                [3] = {
                   ["y"] = -228.4089487879;
                   ["x"] = 336.47988792662;
                };
                [4] = {
                   ["y"] = -235.68169558854;
                   ["x"] = 421.47985769165;
                };
                [5] = {
                   ["y"] = -281.81662864068;
                   ["x"] = 476.62940868524;
                };
                [6] = {
                   ["y"] = -361.3685723804;
                   ["x"] = 494.65363596108;
                };
             };
             ["sublevel"] = 3;
             ["g"] = 19;
             ["patrolFacing"] = 0.88357293382213;
             ["patrolFacing2"] = 3.4361169648638;
          };
          [2] = {
             ["y"] = -415.85030523001;
             ["x"] = 331.31309519598;
             ["g"] = 24;
             ["sublevel"] = 3;
          };
          [3] = {
             ["y"] = -450.85030275692;
             ["x"] = 344.04038121083;
             ["g"] = 24;
             ["sublevel"] = 3;
          };
          [4] = {
             ["y"] = -287.5244329471;
             ["x"] = 468.26846693278;
             ["teeming"] = true;
             ["g"] = 19;
             ["sublevel"] = 3;
          };
          [5] = {
             ["y"] = -390.82122511989;
             ["x"] = 327.40999034673;
             ["teeming"] = true;
             ["g"] = 24;
             ["sublevel"] = 3;
          };
       };
       ["id"] = 98810;
       ["count"] = 6;
       ["name"] = "Wrathguard Bladelord";
       ["health"] = 19774869.75;
       ["displayId"] = 63994;
       ["creatureType"] = "Demon";
       ["level"] = 110;
       ["scale"] = 1;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [18] = {
       ["clones"] = {
          [1] = {
             ["y"] = -274.78586919875;
             ["x"] = 486.20425408937;
             ["g"] = 19;
             ["sublevel"] = 3;
          };
          [2] = {
             ["y"] = -277.61907188549;
             ["x"] = 145.90545604752;
             ["g"] = 23;
             ["sublevel"] = 3;
          };
       };
       ["id"] = 98813;
       ["count"] = 4;
       ["name"] = "Bloodscent Felhound";
       ["health"] = 9887435.292;
       ["displayId"] = 65054;
       ["creatureType"] = "Demon";
       ["level"] = 110;
       ["scale"] = 1;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [19] = {
       ["clones"] = {
          [1] = {
             ["y"] = -258.06570697503;
             ["x"] = 390.78206881702;
             ["g"] = 20;
             ["sublevel"] = 3;
          };
          [2] = {
             ["y"] = -270.94646781564;
             ["x"] = 401.3443535845;
             ["g"] = 20;
             ["sublevel"] = 3;
          };
          [3] = {
             ["y"] = -280.03741983821;
             ["x"] = 415.43521607903;
             ["g"] = 20;
             ["sublevel"] = 3;
          };
          [4] = {
             ["y"] = -270.03738431757;
             ["x"] = 423.16251359403;
             ["g"] = 20;
             ["sublevel"] = 3;
          };
          [5] = {
             ["y"] = -264.12829040562;
             ["x"] = 352.7079877359;
             ["g"] = 21;
             ["sublevel"] = 3;
          };
          [6] = {
             ["y"] = -275.94645390845;
             ["x"] = 327.25349373407;
             ["g"] = 21;
             ["sublevel"] = 3;
          };
          [7] = {
             ["y"] = -211.8555698665;
             ["x"] = 320.8898117127;
             ["g"] = 21;
             ["sublevel"] = 3;
          };
          [8] = {
             ["y"] = -312.78873202677;
             ["x"] = 290.60403730142;
             ["g"] = 22;
             ["sublevel"] = 3;
          };
          [9] = {
             ["y"] = -335.97058555782;
             ["x"] = 291.51317932041;
             ["g"] = 22;
             ["sublevel"] = 3;
          };
          [10] = {
             ["y"] = -286.70998489411;
             ["x"] = 172.26909206834;
             ["g"] = 23;
             ["sublevel"] = 3;
          };
          [11] = {
             ["y"] = -424.17377397276;
             ["x"] = 329.12882009368;
             ["g"] = 26;
             ["sublevel"] = 4;
          };
          [12] = {
             ["y"] = -345.36922481678;
             ["x"] = 465.70730350226;
             ["teeming"] = true;
             ["g"] = 18;
             ["sublevel"] = 3;
          };
          [13] = {
             ["y"] = -358.09651083164;
             ["x"] = 518.43453652995;
             ["teeming"] = true;
             ["g"] = 18;
             ["sublevel"] = 3;
          };
          [14] = {
             ["y"] = -208.35334429605;
             ["x"] = 333.11274764803;
             ["teeming"] = true;
             ["g"] = 21;
             ["sublevel"] = 3;
          };
          [15] = {
             ["y"] = -216.08062230408;
             ["x"] = 309.02184963286;
             ["teeming"] = true;
             ["g"] = 21;
             ["sublevel"] = 3;
          };
          [16] = {
             ["y"] = -341.90516676018;
             ["x"] = 286.94838791594;
             ["teeming"] = true;
             ["g"] = 22;
             ["sublevel"] = 3;
          };
          [17] = {
             ["y"] = -302.81428373845;
             ["x"] = 293.31203092337;
             ["teeming"] = true;
             ["g"] = 22;
             ["sublevel"] = 3;
          };
       };
       ["id"] = 98792;
       ["count"] = 3;
       ["name"] = "Wyrmtongue Scavenger";
       ["health"] = 13595223.318;
       ["displayId"] = 64476;
       ["creatureType"] = "Demon";
       ["level"] = 110;
       ["scale"] = 1;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [20] = {
       ["clones"] = {
          [1] = {
             ["y"] = -494.17380866796;
             ["x"] = 344.91832470038;
             ["sublevel"] = 4;
          };
          [2] = {
             ["y"] = -445.75273950909;
             ["x"] = 438.60261630563;
             ["g"] = 27;
             ["sublevel"] = 4;
          };
          [3] = {
             ["y"] = -424.17377397276;
             ["x"] = 438.07615794005;
             ["g"] = 27;
             ["sublevel"] = 4;
          };
          [4] = {
             ["y"] = -338.83627939259;
             ["x"] = 427.55774623074;
             ["sublevel"] = 4;
          };
          [5] = {
             ["y"] = -279.74533843275;
             ["x"] = 473.46678972373;
             ["g"] = 28;
             ["sublevel"] = 4;
          };
          [6] = {
             ["y"] = -287.92723048184;
             ["x"] = 487.55770014382;
             ["g"] = 28;
             ["sublevel"] = 4;
          };
          [7] = {
             ["y"] = -287.72447536706;
             ["x"] = 475.76195545635;
             ["teeming"] = true;
             ["g"] = 28;
             ["sublevel"] = 4;
          };
       };
       ["id"] = 102788;
       ["count"] = 4;
       ["name"] = "Felspite Dominator";
       ["health"] = 12359293.698;
       ["displayId"] = 5047;
       ["creatureType"] = "Demon";
       ["level"] = 110;
       ["scale"] = 1.4;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [21] = {
       ["clones"] = {
          [1] = {
             ["y"] = -226.02993300084;
             ["x"] = 445.61503266072;
             ["g"] = 29;
             ["sublevel"] = 5;
          };
          [2] = {
             ["y"] = -354.88474622921;
             ["x"] = 217.88165204863;
             ["g"] = 31;
             ["sublevel"] = 5;
          };
          [3] = {
             ["y"] = -472.00179216617;
             ["x"] = 351.76436323392;
             ["g"] = 32;
             ["sublevel"] = 5;
          };
          [4] = {
             ["y"] = -421.52467814905;
             ["x"] = 489.03236969736;
             ["g"] = 33;
             ["sublevel"] = 5;
          };
          [5] = {
             ["y"] = -384.68262582061;
             ["x"] = 540.08504666711;
             ["g"] = 34;
             ["sublevel"] = 5;
          };
          [6] = {
             ["y"] = -281.90627033604;
             ["x"] = 328.8905046709;
             ["teeming"] = true;
             ["g"] = 30;
             ["sublevel"] = 5;
          };
          [7] = {
             ["y"] = -254.63355081715;
             ["x"] = 338.89052068457;
             ["teeming"] = true;
             ["g"] = 30;
             ["sublevel"] = 5;
          };
          [8] = {
             ["y"] = -428.36844351211;
             ["x"] = 513.38960404477;
             ["teeming"] = true;
             ["g"] = 33;
             ["sublevel"] = 5;
          };
       };
       ["id"] = 102095;
       ["count"] = 4;
       ["name"] = "Risen Lancer";
       ["health"] = 13310009.496;
       ["displayId"] = 67478;
       ["creatureType"] = "Undead";
       ["level"] = 110;
       ["scale"] = 1.4;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [22] = {
       ["clones"] = {
          [1] = {
             ["y"] = -242.82767324029;
             ["x"] = 458.06162817525;
             ["g"] = 29;
             ["sublevel"] = 5;
          };
          [2] = {
             ["y"] = -256.85300650133;
             ["x"] = 328.4653279052;
             ["g"] = 30;
             ["sublevel"] = 5;
          };
          [3] = {
             ["y"] = -274.12575089238;
             ["x"] = 322.10160618022;
             ["g"] = 30;
             ["sublevel"] = 5;
          };
          [4] = {
             ["y"] = -343.5211342289;
             ["x"] = 238.33619656454;
             ["g"] = 31;
             ["sublevel"] = 5;
          };
          [5] = {
             ["y"] = -450.63820316613;
             ["x"] = 354.03708173259;
             ["g"] = 32;
             ["sublevel"] = 5;
          };
          [6] = {
             ["y"] = -437.31418077443;
             ["x"] = 501.13765805508;
             ["g"] = 33;
             ["sublevel"] = 5;
          };
          [7] = {
             ["y"] = -399.41943771718;
             ["x"] = 561.13768671825;
             ["g"] = 34;
             ["sublevel"] = 5;
          };
          [8] = {
             ["y"] = -239.56931610201;
             ["x"] = 445.79575265703;
             ["teeming"] = true;
             ["g"] = 29;
             ["sublevel"] = 5;
          };
          [9] = {
             ["y"] = -403.63158608925;
             ["x"] = 500.23166848117;
             ["teeming"] = true;
             ["g"] = 33;
             ["sublevel"] = 5;
          };
       };
       ["id"] = 102094;
       ["count"] = 4;
       ["name"] = "Risen Swordsman";
       ["health"] = 11408579.568;
       ["displayId"] = 67488;
       ["creatureType"] = "Undead";
       ["level"] = 110;
       ["scale"] = 1.4;
       ["color"] = {
          ["a"] = 0.8;
          ["r"] = 1;
          ["g"] = 1;
          ["b"] = 1;
       };
    };
    [23] = {
       ["clones"] = {
          [1] = {
             ["y"] = -347.8364516913;
             ["x"] = 328.90539514917;
             ["sublevel"] = 1;
          };
       };
       ["id"] = 98542;
       ["isBoss"] = true;
       ["encounterID"] = 1518;
       ["scale"] = 1;
       ["name"] = "Amalgam of Souls";
       ["displayId"] = 65837;
       ["creatureType"] = "Undead";
       ["level"] = 112;
       ["count"] = 0;
       ["health"] = 111016239;
    };
    [24] = {
       ["clones"] = {
          [1] = {
             ["y"] = -331.72840257004;
             ["x"] = 511.15552500095;
             ["sublevel"] = 2;
          };
       };
       ["id"] = 98696;
       ["isBoss"] = true;
       ["encounterID"] = 1653;
       ["scale"] = 1;
       ["name"] = "Illysanna Ravencrest";
       ["displayId"] = 65951;
       ["creatureType"] = "Demon";
       ["level"] = 112;
       ["count"] = 0;
       ["health"] = 98328668;
    };
    [25] = {
       ["clones"] = {
          [1] = {
             ["y"] = -130.68765475376;
             ["x"] = 639.71120113254;
             ["sublevel"] = 4;
          };
       };
       ["id"] = 98949;
       ["isBoss"] = true;
       ["encounterID"] = 1664;
       ["scale"] = 1;
       ["name"] = "Smashspite the Hateful";
       ["displayId"] = 65304;
       ["creatureType"] = "Demon";
       ["level"] = 112;
       ["count"] = 0;
       ["health"] = 98816653;
    };
    [26] = {
       ["clones"] = {
          [1] = {
             ["y"] = -254.49716879986;
             ["x"] = 308.99187394232;
             ["sublevel"] = 6;
          };
       };
       ["id"] = 98965;
       ["isBoss"] = true;
       ["encounterID"] = 1672;
       ["scale"] = 1;
       ["name"] = "Kur'talos Ravencrest";
       ["displayId"] = 66853;
       ["creatureType"] = "Undead";
       ["level"] = 112;
       ["count"] = 0;
       ["health"] = 38062709;
    };
 };
