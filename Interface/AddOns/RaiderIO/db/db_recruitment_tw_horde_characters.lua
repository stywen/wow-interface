--
-- Copyright (c) 2022 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="tw",faction=2,date="2022-06-24T07:25:31Z",numCharacters=15869,db2={}}
local F

F = function() provider.db2["日落沼澤"]={0,"Php"} end F()

F = nil
RaiderIO.AddProvider(provider)
