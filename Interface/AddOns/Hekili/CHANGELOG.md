# Hekili

## [v9.2.5-1.0.5](https://github.com/Hekili/hekili/tree/v9.2.5-1.0.5) (2022-06-23)
[Full Changelog](https://github.com/Hekili/hekili/compare/v9.2.5-1.0.4...v9.2.5-1.0.5) [Previous Releases](https://github.com/Hekili/hekili/releases)

- Fix WW Bonedust Brew Urh check.  
- Testfix for Xy'mox filter bug.  
- Prevent audits and recommendations from occurring for specs without modules.  
- Fix unit debuff check for excluding targets.  
- Merge pull request #1543 from Arrhae/arrhae-even-more-warrior-gcds  
- Merge pull request #1544 from Deathshiver/ww-qol  
- Fix Windwalker FoF interrupt outside of Serenity  
- Allow Windwalker Touch of Death to be used on non-player targets with less health than player max  
- Add windwalker setting to check SCK range  
- Warrior: Fix more abilities being off-GCD  
    Tested on 9.2.5:  
    - Berserker Rage  
    - Challenging Shout  
    - Defensive Stance  
    - Enraged Regeneration  
    - Ignore Pain  
    - Last Stand  
    - Pummel  
    - Sharpen Blade  
    - Shield Block  
    - Shield Wall  
    - Taunt  
- Merge pull request #1541 from Arrhae/arrhae-heroic-leap-nogcd  
- Merge pull request #1539 from IIeTpoc/shadowlands  
- Fix Protection Warrior's Heroic Leap GCD setting.  
    Arms and Fury are already fine.  
- Merge branch 'Hekili:shadowlands' into shadowlands  
- Merge pull request #3 from IIeTpoc/IIeTpoc-patch-1  
    Update RogueAssassination.lua  
- Merge pull request #2 from IIeTpoc/IIeTpoc-patch-3  
    update kidney\_shot debuff duration handler  
- Merge pull request #1 from IIeTpoc/IIeTpoc-patch-2-2  
    Outlaw Kidney\_shot update  
- update kidney\_shot debuff duration handler  
- Outlaw Kidney\_shot update  
    Kidneyshot fix for outlaw (added usable condition, apply debuff on target, add stack of alacrity, adjusted Controll is king pvp talent changes)  
- Update RogueAssassination.lua  
    Minor kidney shot fix as it applies Alacrity stack  