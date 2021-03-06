local MDT = MDT
local L = MDT.L
local dungeonIndex = 6
MDT.dungeonList[dungeonIndex] = L["Halls of Valor"]
local nerfMultiplier = 1
local pi = math.pi

MDT.dungeonMaps[dungeonIndex] = {
    [0]= "Hallsofvalor",
    [1]= "Hallsofvalor1_",
    [2]= "Hallsofvalor",
    [3]= "Hallsofvalor2_",
}
MDT.dungeonSubLevels[dungeonIndex] = {
    [1] = L["The High Gate"],
    [2] = L["Field of the Eternal Hunt"],
    [3] = L["Halls of Valor Sublevel"],
}

MDT.dungeonTotalCount[dungeonIndex] = {normal=126,teeming=151,teemingEnabled=true}

MDT.dungeonEnemies[dungeonIndex] = {
    [1] = {
       ["clones"] = {
          [1] = {
             ["y"] = -116.59040649276;
             ["x"] = 396.43826513428;
             ["g"] = 1;
             ["sublevel"] = 1;
          };
          [2] = {
             ["y"] = -116.59040649276;
             ["x"] = 404.2763939145;
             ["g"] = 1;
             ["sublevel"] = 1;
          };
          [4] = {
             ["y"] = -154.31761464821;
             ["x"] = 407.54347738953;
             ["g"] = 2;
             ["sublevel"] = 1;
          };
          [8] = {
             ["y"] = -290.62997561392;
             ["x"] = 375.85909797484;
             ["g"] = 4;
             ["sublevel"] = 1;
          };
          [16] = {
             ["y"] = -386.70541113222;
             ["x"] = 453.47980582471;
             ["g"] = 10;
             ["sublevel"] = 1;
          };
          [17] = {
             ["y"] = -386.63123610245;
             ["x"] = 434.58451209845;
             ["g"] = 11;
             ["sublevel"] = 1;
          };
          [9] = {
             ["y"] = -290.62997561392;
             ["x"] = 423.19288136924;
             ["g"] = 5;
             ["sublevel"] = 1;
          };
          [18] = {
             ["y"] = -365.60724781729;
             ["x"] = 372.95399842933;
             ["g"] = 12;
             ["sublevel"] = 1;
          };
          [5] = {
             ["y"] = -180.68097065267;
             ["x"] = 389.73138823;
             ["g"] = 3;
             ["sublevel"] = 1;
          };
          [10] = {
             ["y"] = -331.57654171408;
             ["x"] = 390.0372828025;
             ["g"] = 6;
             ["sublevel"] = 1;
          };
          [20] = {
             ["y"] = -401.28163747083;
             ["x"] = 351.87482767618;
             ["g"] = 14;
             ["sublevel"] = 1;
          };
          [21] = {
             ["y"] = -388.19178954603;
             ["x"] = 372.88941055456;
             ["g"] = 15;
             ["sublevel"] = 1;
          };
          [11] = {
             ["y"] = -329.44162679875;
             ["x"] = 395.58916554691;
             ["g"] = 6;
             ["sublevel"] = 1;
          };
          [22] = {
             ["y"] = -180.323598819;
             ["x"] = 401.14982523048;
             ["teeming"] = true;
             ["g"] = 3;
             ["sublevel"] = 1;
          };
          [3] = {
             ["y"] = -154.31761464821;
             ["x"] = 393.45265390895;
             ["g"] = 2;
             ["sublevel"] = 1;
          };
          [6] = {
             ["y"] = -180.68097065267;
             ["x"] = 412.45869025853;
             ["g"] = 3;
             ["sublevel"] = 1;
          };
          [12] = {
             ["y"] = -327.94016870784;
             ["x"] = 399.5827082997;
             ["g"] = 6;
             ["sublevel"] = 1;
          };
          [13] = {
             ["y"] = -375.55867255733;
             ["x"] = 401.89186839096;
             ["g"] = 7;
             ["sublevel"] = 1;
          };
          [7] = {
             ["y"] = -295.35114105942;
             ["x"] = 385.6037970437;
             ["g"] = 4;
             ["sublevel"] = 1;
          };
          [14] = {
             ["y"] = -370.56001241228;
             ["x"] = 419.04992983764;
             ["g"] = 9;
             ["sublevel"] = 1;
          };
          [19] = {
             ["y"] = -384.97121946832;
             ["x"] = 346.86055235742;
             ["g"] = 13;
             ["sublevel"] = 1;
          };
          [15] = {
             ["y"] = -373.28728241347;
             ["x"] = 430.86807383351;
             ["patrol"] = {
                [1] = {
                   ["y"] = -373.28728241347;
                   ["x"] = 430.86807383351;
                };
                [2] = {
                   ["y"] = -372.67672739765;
                   ["x"] = 423.63383105866;
                };
                [4] = {
                   ["y"] = -385.92667150773;
                   ["x"] = 447.18436696463;
                };
                [3] = {
                   ["y"] = -373.28728241347;
                   ["x"] = 430.86807383351;
                };
             };
             ["sublevel"] = 1;
             ["patrolFacing"] = 1.6689710972196;
             ["patrolFacing2"] = 3.9269908169872;
          };
       };
       ["id"] = 97087;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "Valarjar Champion";
       ["displayId"] = 67274;
       ["creatureType"] = "Humanoid";
       ["level"] = 110;
       ["count"] = 2;
       ["health"] = 10373509;
    };
    [2] = {
       ["clones"] = {
          [7] = {
             ["y"] = -380.91665215198;
             ["x"] = 455.03464882925;
             ["g"] = 10;
             ["sublevel"] = 1;
          };
          [1] = {
             ["y"] = -150.41337067241;
             ["x"] = 400.63999521561;
             ["g"] = 2;
             ["sublevel"] = 1;
          };
          [2] = {
             ["y"] = -188.40822915372;
             ["x"] = 393.36776123624;
             ["g"] = 3;
             ["sublevel"] = 1;
          };
          [4] = {
             ["y"] = -296.31264022805;
             ["x"] = 419.42701178009;
             ["g"] = 5;
             ["sublevel"] = 1;
          };
          [8] = {
             ["y"] = -391.95857593959;
             ["x"] = 436.99868643204;
             ["g"] = 11;
             ["sublevel"] = 1;
          };
          [9] = {
             ["y"] = -383.55430275203;
             ["x"] = 369.60224252766;
             ["g"] = 15;
             ["sublevel"] = 1;
          };
          [5] = {
             ["y"] = -332.94011456074;
             ["x"] = 405.49184925783;
             ["g"] = 6;
             ["sublevel"] = 1;
          };
          [10] = {
             ["y"] = -391.37363055672;
             ["x"] = 361.52574003332;
             ["patrol"] = {
                [1] = {
                   ["y"] = -391.37363055672;
                   ["x"] = 361.52574003332;
                };
                [2] = {
                   ["y"] = -388.16023708117;
                   ["x"] = 367.60804330075;
                };
                [4] = {
                   ["y"] = -398.16023358786;
                   ["x"] = 356.69904132388;
                };
                [3] = {
                   ["y"] = -391.37363055672;
                   ["x"] = 361.52574003332;
                };
             };
             ["sublevel"] = 1;
             ["patrolFacing"] = 2.5525440310417;
             ["patrolFacing2"] = 5.2032628325081;
          };
          [3] = {
             ["y"] = -188.40822915372;
             ["x"] = 407.91325326119;
             ["g"] = 3;
             ["sublevel"] = 1;
          };
          [6] = {
             ["y"] = -379.19500654962;
             ["x"] = 404.61906036425;
             ["g"] = 7;
             ["sublevel"] = 1;
          };
          [12] = {
             ["y"] = -153.90362484579;
             ["x"] = 386.76796892996;
             ["teeming"] = true;
             ["g"] = 2;
             ["sublevel"] = 1;
          };
          [11] = {
             ["y"] = -154.81264982295;
             ["x"] = 414.49525945835;
             ["teeming"] = true;
             ["g"] = 2;
             ["sublevel"] = 1;
          };
       };
       ["id"] = 95842;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "Valarjar Thundercaller";
       ["displayId"] = 67277;
       ["creatureType"] = "Humanoid";
       ["level"] = 110;
       ["count"] = 2;
       ["health"] = 15503265;
    };
    [4] = {
       ["clones"] = {
          [6] = {
             ["y"] = -340.25134419519;
             ["x"] = 407.2514407163;
             ["teeming"] = true;
             ["g"] = 6;
             ["sublevel"] = 1;
          };
          [2] = {
             ["y"] = -335.14043792823;
             ["x"] = 410.23773352853;
             ["g"] = 6;
             ["sublevel"] = 1;
          };
          [8] = {
             ["y"] = -389.48758770472;
             ["x"] = 350.88771547377;
             ["teeming"] = true;
             ["g"] = 13;
             ["sublevel"] = 1;
          };
          [3] = {
             ["y"] = -365.80703613039;
             ["x"] = 419.22294771493;
             ["g"] = 9;
             ["sublevel"] = 1;
          };
          [1] = {
             ["y"] = -296.31264022805;
             ["x"] = 379.40927185002;
             ["g"] = 4;
             ["sublevel"] = 1;
          };
          [4] = {
             ["y"] = -390.8636655989;
             ["x"] = 431.68084810462;
             ["g"] = 11;
             ["sublevel"] = 1;
          };
          [5] = {
             ["y"] = -371.77277559056;
             ["x"] = 369.86262404042;
             ["g"] = 12;
             ["sublevel"] = 1;
          };
          [7] = {
             ["y"] = -329.66946241205;
             ["x"] = 412.94243665207;
             ["teeming"] = true;
             ["g"] = 6;
             ["sublevel"] = 1;
          };
       };
       ["id"] = 95834;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "Valarjar Mystic";
       ["displayId"] = 64208;
       ["creatureType"] = "Humanoid";
       ["level"] = 110;
       ["count"] = 2;
       ["health"] = 14819297;
    };
    [8] = {
       ["clones"] = {
          [2] = {
             ["y"] = -416.32499713849;
             ["x"] = 479.0152263943;
             ["g"] = 16;
             ["sublevel"] = 1;
          };
          [3] = {
             ["y"] = -441.590191733;
             ["x"] = 490.70507152066;
             ["g"] = 17;
             ["sublevel"] = 1;
          };
          [1] = {
             ["y"] = -421.7401625605;
             ["x"] = 474.19936564065;
             ["g"] = 16;
             ["sublevel"] = 1;
          };
          [4] = {
             ["y"] = -432.49929823135;
             ["x"] = 500.70508753432;
             ["g"] = 17;
             ["sublevel"] = 1;
          };
          [5] = {
             ["y"] = -422.17119004071;
             ["x"] = 480.77476338158;
             ["teeming"] = true;
             ["g"] = 16;
             ["sublevel"] = 1;
          };
       };
       ["id"] = 95832;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "Valarjar Shieldmaiden";
       ["displayId"] = 25801;
       ["creatureType"] = "Humanoid";
       ["level"] = 110;
       ["count"] = 2;
       ["health"] = 14819297;
    };
    [16] = {
       ["clones"] = {
          [6] = {
             ["y"] = -330.97275616448;
             ["x"] = 457.73076446233;
             ["sublevel"] = 2;
          };
          [2] = {
             ["y"] = -369.26486719263;
             ["x"] = 391.93871449039;
             ["sublevel"] = 2;
          };
          [8] = {
             ["y"] = -341.42728579971;
             ["x"] = 485.45797996768;
             ["sublevel"] = 2;
          };
          [3] = {
             ["y"] = -374.26487519946;
             ["x"] = 417.3932865201;
             ["sublevel"] = 2;
          };
          [1] = {
             ["y"] = -333.44364186356;
             ["x"] = 381.87141289954;
             ["sublevel"] = 2;
          };
          [4] = {
             ["y"] = -345.17396917745;
             ["x"] = 420.57510802382;
             ["sublevel"] = 2;
          };
          [5] = {
             ["y"] = -298.81035965022;
             ["x"] = 436.48417652845;
             ["sublevel"] = 2;
          };
          [7] = {
             ["y"] = -361.42730048751;
             ["x"] = 460.91258631087;
             ["sublevel"] = 2;
          };
       };
       ["id"] = 96677;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "Steeljaw Grizzly";
       ["displayId"] = 41014;
       ["creatureType"] = "Beast";
       ["level"] = 110;
       ["count"] = 2;
       ["health"] = 17783157;
    };
    [17] = {
       ["clones"] = {
          [1] = {
             ["y"] = -206.68602442295;
             ["x"] = 379.7546362998;
             ["g"] = 19;
             ["sublevel"] = 2;
          };
          [2] = {
             ["y"] = -242.20869303022;
             ["x"] = 367.91076111019;
             ["g"] = 20;
             ["sublevel"] = 2;
          };
       };
       ["id"] = 96934;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "Valarjar Trapper";
       ["displayId"] = 67281;
       ["creatureType"] = "Humanoid";
       ["level"] = 110;
       ["count"] = 2;
       ["health"] = 15263877;
    };
    [9] = {
       ["clones"] = {
          [1] = {
             ["y"] = -439.31745372736;
             ["x"] = 497.97785654708;
             ["g"] = 17;
             ["sublevel"] = 1;
          };
       };
       ["id"] = 97197;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "Valarjar Purifier";
       ["displayId"] = 64200;
       ["creatureType"] = "Humanoid";
       ["level"] = 110;
       ["count"] = 2;
       ["health"] = 14819297;
    };
    [18] = {
       ["clones"] = {
          [1] = {
             ["y"] = -236.17777173697;
             ["x"] = 363.18087409244;
             ["g"] = 20;
             ["sublevel"] = 2;
          };
          [2] = {
             ["y"] = -247.80869010668;
             ["x"] = 361.88599944354;
             ["g"] = 20;
             ["sublevel"] = 2;
          };
       };
       ["id"] = 99804;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "Valarjar Falconer";
       ["displayId"] = 25811;
       ["creatureType"] = "Humanoid";
       ["level"] = 110;
       ["count"] = 2;
       ["health"] = 13337369;
    };
    [5] = {
       ["clones"] = {
          [2] = {
             ["y"] = -366.01321098662;
             ["x"] = 401.89187796072;
             ["patrol"] = {
                [15] = {
                   ["y"] = -377.64722147628;
                   ["x"] = 383.91399554615;
                };
                [13] = {
                   ["y"] = -392.64724549678;
                   ["x"] = 349.36858853571;
                };
                [7] = {
                   ["y"] = -378.18270398506;
                   ["x"] = 415.32633780172;
                };
                [1] = {
                   ["y"] = -366.01321098662;
                   ["x"] = 401.89187796072;
                };
                [2] = {
                   ["y"] = -368.2271698905;
                   ["x"] = 410.48857429124;
                };
                [4] = {
                   ["y"] = -378.13814795463;
                   ["x"] = 435.90096725346;
                };
                [8] = {
                   ["y"] = -368.2271698905;
                   ["x"] = 410.48857429124;
                };
                [16] = {
                   ["y"] = -368.1017764721;
                   ["x"] = 390.73222907005;
                };
                [9] = {
                   ["y"] = -366.01321098662;
                   ["x"] = 401.89187796072;
                };
                [5] = {
                   ["y"] = -394.49087645223;
                   ["x"] = 454.36659018091;
                };
                [10] = {
                   ["y"] = -368.1017764721;
                   ["x"] = 390.73222907005;
                };
                [14] = {
                   ["y"] = -379.01087598384;
                   ["x"] = 364.82306652386;
                };
                [3] = {
                   ["y"] = -378.18270398506;
                   ["x"] = 415.32633780172;
                };
                [6] = {
                   ["y"] = -378.13814795463;
                   ["x"] = 435.90096725346;
                };
                [12] = {
                   ["y"] = -379.01087598384;
                   ["x"] = 364.82306652386;
                };
                [11] = {
                   ["y"] = -377.64722147628;
                   ["x"] = 383.91399554615;
                };
             };
             ["sublevel"] = 1;
             ["patrolFacing"] = 1.8653206380689;
             ["patrolFacing2"] = 4.5160394395353;
          };
          [3] = {
             ["y"] = -397.12085428949;
             ["x"] = 394.30850352101;
             ["g"] = 8;
             ["sublevel"] = 1;
          };
          [1] = {
             ["y"] = -279.16024812743;
             ["x"] = 400.9203034681;
             ["patrol"] = {
                [1] = {
                   ["y"] = -279.16024812743;
                   ["x"] = 400.9203034681;
                };
                [2] = {
                   ["y"] = -286.35317555118;
                   ["x"] = 417.96870760999;
                };
                [4] = {
                   ["y"] = -285.89858503471;
                   ["x"] = 383.87777407418;
                };
                [3] = {
                   ["y"] = -279.16024812743;
                   ["x"] = 400.9203034681;
                };
             };
             ["sublevel"] = 1;
             ["patrolFacing"] = 1.8653206380689;
             ["g"] = 25;
             ["patrolFacing2"] = 4.5160394395353;
          };
          [4] = {
             ["y"] = -397.12085428949;
             ["x"] = 408.85395653201;
             ["g"] = 8;
             ["sublevel"] = 1;
          };
          [5] = {
             ["y"] = -270.52242719225;
             ["x"] = 400.67370725992;
             ["teeming"] = true;
             ["g"] = 25;
             ["sublevel"] = 1;
          };
       };
       ["id"] = 96574;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1.4;
       ["name"] = "Stormforged Sentinel";
       ["displayId"] = 67429;
       ["creatureType"] = "Humanoid";
       ["level"] = 111;
       ["count"] = 5;
       ["health"] = 24528930;
    };
    [10] = {
       ["clones"] = {
          [1] = {
             ["y"] = -462.10359628078;
             ["x"] = 510.29022734187;
             ["g"] = 18;
             ["sublevel"] = 1;
          };
          [2] = {
             ["y"] = -452.49929124474;
             ["x"] = 519.72398434911;
             ["g"] = 18;
             ["sublevel"] = 1;
          };
       };
       ["id"] = 101639;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "Valarjar Shieldmaiden";
       ["displayId"] = 25801;
       ["creatureType"] = "Humanoid";
       ["level"] = 110;
       ["count"] = 0;
       ["health"] = 14819297;
    };
    [20] = {
       ["clones"] = {
          [13] = {
             ["y"] = -385.54372876427;
             ["x"] = 300.32462386635;
             ["g"] = 24;
             ["sublevel"] = 2;
          };
          [7] = {
             ["y"] = -370.40034573881;
             ["x"] = 217.72668719564;
             ["g"] = 23;
             ["sublevel"] = 2;
          };
          [1] = {
             ["y"] = -345.28263534311;
             ["x"] = 235.9086237617;
             ["g"] = 21;
             ["sublevel"] = 2;
          };
          [2] = {
             ["y"] = -342.4992868853;
             ["x"] = 227.77970666059;
             ["g"] = 21;
             ["sublevel"] = 2;
          };
          [4] = {
             ["y"] = -340.36162956042;
             ["x"] = 281.13897544758;
             ["g"] = 22;
             ["sublevel"] = 2;
          };
          [8] = {
             ["y"] = -380.22651310672;
             ["x"] = 213.32676290237;
             ["g"] = 23;
             ["sublevel"] = 2;
          };
          [9] = {
             ["y"] = -382.04471911681;
             ["x"] = 220.14491839837;
             ["g"] = 23;
             ["sublevel"] = 2;
          };
          [5] = {
             ["y"] = -345.81620857675;
             ["x"] = 277.95711492991;
             ["g"] = 22;
             ["sublevel"] = 2;
          };
          [10] = {
             ["y"] = -360.98403019331;
             ["x"] = 312.81365335235;
             ["sublevel"] = 2;
          };
          [3] = {
             ["y"] = -327.63438255951;
             ["x"] = 267.95709891625;
             ["sublevel"] = 2;
          };
          [6] = {
             ["y"] = -391.5050027785;
             ["x"] = 265.03429184455;
             ["sublevel"] = 2;
          };
          [12] = {
             ["y"] = -394.18009027037;
             ["x"] = 303.96095785864;
             ["g"] = 24;
             ["sublevel"] = 2;
          };
          [11] = {
             ["y"] = -383.27102977258;
             ["x"] = 307.14274034841;
             ["g"] = 24;
             ["sublevel"] = 2;
          };
       };
       ["id"] = 96608;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "Ebonclaw Worg";
       ["displayId"] = 70154;
       ["creatureType"] = "Beast";
       ["level"] = 110;
       ["count"] = 2;
       ["health"] = 13337369;
    };
    [21] = {
       ["clones"] = {
          [1] = {
             ["y"] = -489.31740379323;
             ["x"] = 450.87390774441;
             ["sublevel"] = 3;
          };
       };
       ["id"] = 97083;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "King Ranulf";
       ["displayId"] = 28087;
       ["creatureType"] = "Humanoid";
       ["level"] = 111;
       ["count"] = 5;
       ["health"] = 35378266;
    };
    [11] = {
       ["clones"] = {
          [1] = {
             ["y"] = -458.40838274965;
             ["x"] = 517.32929244124;
             ["g"] = 18;
             ["sublevel"] = 1;
          };
       };
       ["id"] = 101637;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "Valarjar Aspirant";
       ["displayId"] = 70645;
       ["creatureType"] = "Humanoid";
       ["level"] = 110;
       ["count"] = 0;
       ["health"] = 14819297;
    };
    [22] = {
       ["clones"] = {
          [1] = {
             ["y"] = -499.77197130942;
             ["x"] = 443.60116173194;
             ["sublevel"] = 3;
          };
       };
       ["id"] = 95843;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "King Haldor";
       ["displayId"] = 28086;
       ["creatureType"] = "Humanoid";
       ["level"] = 111;
       ["count"] = 5;
       ["health"] = 35378266;
    };
    [3] = {
       ["clones"] = {
          [1] = {
             ["y"] = -188.40822915372;
             ["x"] = 400.66339222634;
             ["g"] = 3;
             ["sublevel"] = 1;
          };
          [2] = {
             ["y"] = -182.7480706241;
             ["x"] = 489.72023075012;
             ["sublevel"] = 2;
          };
       };
       ["id"] = 97068;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1.4;
       ["name"] = "Storm Drake";
       ["displayId"] = 67203;
       ["creatureType"] = "Beast";
       ["level"] = 111;
       ["count"] = 5;
       ["health"] = 26061988;
    };
    [6] = {
       ["clones"] = {
          [2] = {
             ["y"] = -337.86769703295;
             ["x"] = 393.41935637267;
             ["g"] = 6;
             ["sublevel"] = 1;
          };
          [3] = {
             ["y"] = -379.64959025304;
             ["x"] = 396.7100289432;
             ["g"] = 7;
             ["sublevel"] = 1;
          };
          [1] = {
             ["y"] = -295.35114105942;
             ["x"] = 412.73839188094;
             ["g"] = 5;
             ["sublevel"] = 1;
          };
          [4] = {
             ["y"] = -391.06180034004;
             ["x"] = 341.5904129226;
             ["g"] = 13;
             ["sublevel"] = 1;
          };
          [5] = {
             ["y"] = -385.43097982093;
             ["x"] = 459.38868707421;
             ["teeming"] = true;
             ["g"] = 10;
             ["sublevel"] = 1;
          };
       };
       ["id"] = 96664;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "Valarjar Runecarver";
       ["displayId"] = 64200;
       ["creatureType"] = "Humanoid";
       ["level"] = 110;
       ["count"] = 2;
       ["health"] = 14819297;
    };
    [12] = {
       ["clones"] = {
          [1] = {
             ["y"] = -453.40835523584;
             ["x"] = 538.31348975261;
             ["sublevel"] = 1;
          };
       };
       ["id"] = 97219;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "Solsten";
       ["displayId"] = 64575;
       ["creatureType"] = "Humanoid";
       ["level"] = 111;
       ["count"] = 0;
       ["health"] = 49057860;
    };
    [24] = {
       ["clones"] = {
          [1] = {
             ["y"] = -489.31740379323;
             ["x"] = 411.53029697192;
             ["sublevel"] = 3;
          };
       };
       ["id"] = 97084;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "King Tor";
       ["displayId"] = 28088;
       ["creatureType"] = "Humanoid";
       ["level"] = 111;
       ["count"] = 5;
       ["health"] = 35378266;
    };
    [19] = {
       ["clones"] = {
          [1] = {
             ["y"] = -200.84505249588;
             ["x"] = 307.00175709288;
             ["sublevel"] = 2;
          };
       };
       ["id"] = 95674;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1.8;
       ["name"] = "Fenryr";
       ["displayId"] = 64466;
       ["creatureType"] = "Beast";
       ["level"] = 112;
       ["count"] = 0;
       ["health"] = 121117494;
    };
    [25] = {
       ["clones"] = {
          [1] = {
             ["y"] = -221.96453590722;
             ["x"] = 400.09982370061;
             ["sublevel"] = 1;
          };
       };
       ["id"] = 94960;
       ["isBoss"] = true;
       ["encounterID"] = 1485;
       ["scale"] = 1;
       ["name"] = "Hymdall";
       ["displayId"] = 67773;
       ["creatureType"] = "Humanoid";
       ["level"] = 112;
       ["count"] = 0;
       ["health"] = 108107100;
    };
    [13] = {
       ["clones"] = {
          [1] = {
             ["y"] = -479.77197174968;
             ["x"] = 511.92651868771;
             ["sublevel"] = 1;
          };
       };
       ["id"] = 97202;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "Olmyr the Enlightened";
       ["displayId"] = 64464;
       ["creatureType"] = "Humanoid";
       ["level"] = 111;
       ["count"] = 0;
       ["health"] = 49057860;
    };
    [26] = {
       ["clones"] = {
          [1] = {
             ["y"] = -475.68108625487;
             ["x"] = 532.38106320362;
             ["sublevel"] = 1;
          };
       };
       ["id"] = 95833;
       ["isBoss"] = true;
       ["encounterID"] = 1486;
       ["scale"] = 1;
       ["name"] = "Hyrja";
       ["displayId"] = 72718;
       ["creatureType"] = "Humanoid";
       ["level"] = 112;
       ["count"] = 0;
       ["health"] = 111016239;
    };
    [27] = {
       ["clones"] = {
          [1] = {
             ["y"] = -419.38883531559;
             ["x"] = 237.74927321758;
             ["sublevel"] = 2;
          };
       };
       ["id"] = 99868;
       ["isBoss"] = true;
       ["encounterID"] = 1487;
       ["scale"] = 1;
       ["name"] = "Fenryr";
       ["displayId"] = 64466;
       ["creatureType"] = "Beast";
       ["level"] = 112;
       ["count"] = 0;
       ["health"] = 121117494;
    };
    [7] = {
       ["clones"] = {
          [6] = {
             ["y"] = -212.08683652985;
             ["x"] = 375.45357552759;
             ["g"] = 19;
             ["sublevel"] = 2;
          };
          [2] = {
             ["y"] = -371.77277559056;
             ["x"] = 376.57922634769;
             ["g"] = 12;
             ["sublevel"] = 1;
          };
          [3] = {
             ["y"] = -379.24361733022;
             ["x"] = 342.49955494159;
             ["g"] = 13;
             ["sublevel"] = 1;
          };
          [1] = {
             ["y"] = -381.92229605778;
             ["x"] = 400.07362336692;
             ["g"] = 7;
             ["sublevel"] = 1;
          };
          [4] = {
             ["y"] = -395.68118226745;
             ["x"] = 351.70920882241;
             ["g"] = 14;
             ["sublevel"] = 1;
          };
          [5] = {
             ["y"] = -215.77689841762;
             ["x"] = 382.48190630099;
             ["g"] = 19;
             ["sublevel"] = 2;
          };
       };
       ["id"] = 96640;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "Valarjar Marksman";
       ["displayId"] = 25811;
       ["creatureType"] = "Humanoid";
       ["level"] = 110;
       ["count"] = 2;
       ["health"] = 14522911;
    };
    [14] = {
       ["clones"] = {
          [7] = {
             ["y"] = -273.11941850113;
             ["x"] = 239.4100368558;
             ["sublevel"] = 2;
          };
          [1] = {
             ["y"] = -188.44896229295;
             ["x"] = 564.54447417447;
             ["sublevel"] = 2;
          };
          [2] = {
             ["y"] = -151.63075875594;
             ["x"] = 540.9081471688;
             ["sublevel"] = 2;
          };
          [4] = {
             ["y"] = -229.55127446511;
             ["x"] = 457.68316051536;
             ["sublevel"] = 2;
          };
          [8] = {
             ["y"] = -304.48308203576;
             ["x"] = 266.22822437914;
             ["sublevel"] = 2;
          };
          [9] = {
             ["y"] = -299.48311304287;
             ["x"] = 215.77367083617;
             ["sublevel"] = 2;
          };
          [5] = {
             ["y"] = -210.00581344727;
             ["x"] = 441.31954050821;
             ["sublevel"] = 2;
          };
          [10] = {
             ["y"] = -422.02449573486;
             ["x"] = 297.84858290172;
             ["sublevel"] = 2;
          };
          [3] = {
             ["y"] = -216.82404697117;
             ["x"] = 475.41043503008;
             ["sublevel"] = 2;
          };
          [6] = {
             ["y"] = -274.66418568153;
             ["x"] = 381.56924337416;
             ["sublevel"] = 2;
          };
       };
       ["id"] = 96609;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 0.6;
       ["name"] = "Gildedfur Stag";
       ["displayId"] = 45090;
       ["creatureType"] = "Beast";
       ["level"] = 110;
       ["count"] = 0;
       ["health"] = 4445789;
    };
    [28] = {
       ["clones"] = {
          [1] = {
             ["y"] = -463.32639132102;
             ["x"] = 432.11455512396;
             ["sublevel"] = 3;
          };
       };
       ["id"] = 95675;
       ["isBoss"] = true;
       ["encounterID"] = 1488;
       ["scale"] = 1;
       ["name"] = "God-King Skovald";
       ["displayId"] = 65873;
       ["creatureType"] = "Humanoid";
       ["level"] = 112;
       ["count"] = 0;
       ["health"] = 105404422;
    };
    [23] = {
       ["clones"] = {
          [1] = {
             ["y"] = -499.77197130942;
             ["x"] = 419.05577073516;
             ["sublevel"] = 3;
          };
       };
       ["id"] = 97081;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "King Bjorn";
       ["displayId"] = 28085;
       ["creatureType"] = "Humanoid";
       ["level"] = 111;
       ["count"] = 5;
       ["health"] = 35378266;
    };
    [29] = {
       ["clones"] = {
          [1] = {
             ["y"] = -514.23547685953;
             ["x"] = 431.20553014681;
             ["sublevel"] = 3;
          };
       };
       ["id"] = 95676;
       ["isBoss"] = true;
       ["encounterID"] = 1489;
       ["scale"] = 1;
       ["name"] = "Odyn";
       ["displayId"] = 67230;
       ["creatureType"] = "Humanoid";
       ["level"] = -1;
       ["count"] = 0;
       ["health"] = 555081179;
    };
    [15] = {
       ["clones"] = {
          [2] = {
             ["y"] = -241.57621334887;
             ["x"] = 437.52640393367;
             ["sublevel"] = 2;
          };
          [3] = {
             ["y"] = -234.3034673364;
             ["x"] = 401.16279091313;
             ["sublevel"] = 2;
          };
          [1] = {
             ["y"] = -260.06368073781;
             ["x"] = 484.01135087773;
             ["sublevel"] = 2;
          };
          [4] = {
             ["y"] = -271.12165136643;
             ["x"] = 400.25364889414;
             ["sublevel"] = 2;
          };
          [5] = {
             ["y"] = -301.57420331374;
             ["x"] = 386.35666522416;
             ["sublevel"] = 2;
          };
       };
       ["id"] = 96611;
       ["color"] = {
          ["a"] = 0.8;
          ["b"] = 1;
          ["g"] = 1;
          ["r"] = 1;
       };
       ["scale"] = 1;
       ["name"] = "Angerhoof Bull";
       ["displayId"] = 65853;
       ["creatureType"] = "Beast";
       ["level"] = 110;
       ["count"] = 2;
       ["health"] = 16301227;
    };
 };
