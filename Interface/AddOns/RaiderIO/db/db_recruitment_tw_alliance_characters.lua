--
-- Copyright (c) 2022 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="tw",faction=1,date="2022-06-21T07:25:45Z",numCharacters=16409,db1={}}
local F

F = function() provider.db1["暗影之月"]={0,"派翠希雅"} end F()

F = nil
RaiderIO.AddProvider(provider)
