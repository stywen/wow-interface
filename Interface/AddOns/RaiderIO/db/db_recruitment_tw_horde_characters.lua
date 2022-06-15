--
-- Copyright (c) 2022 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="tw",faction=2,date="2022-06-15T07:25:40Z",numCharacters=17277,db2={}}
local F

F = function() provider.db2["日落沼澤"]={0,"Php"} end F()
F = function() provider.db2["冰風崗哨"]={2,"烤雞翅"} end F()

F = nil
RaiderIO.AddProvider(provider)
