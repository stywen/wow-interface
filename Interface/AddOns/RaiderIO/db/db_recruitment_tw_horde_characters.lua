--
-- Copyright (c) 2022 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="tw",faction=2,date="2022-06-09T07:04:12Z",numCharacters=17975,db2={}}
local F

F = function() provider.db2["冰風崗哨"]={0,"烤雞翅"} end F()

F = nil
RaiderIO.AddProvider(provider)
