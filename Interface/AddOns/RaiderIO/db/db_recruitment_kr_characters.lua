--
-- Copyright (c) 2022 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="kr",date="2022-07-23T07:30:26Z",numCharacters=15489,db={}}
local F

F = function() provider.db["아즈샤라"]={0,"고단","곰범조목","냥단","밑단","장단"} end F()

F = nil
RaiderIO.AddProvider(provider)
