--
-- Copyright (c) 2022 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="kr",faction=1,date="2022-06-30T07:31:04Z",numCharacters=15306,db1={}}
local F

F = function() provider.db1["아즈샤라"]={0,"냥단","밑단","장단"} end F()

F = nil
RaiderIO.AddProvider(provider)
