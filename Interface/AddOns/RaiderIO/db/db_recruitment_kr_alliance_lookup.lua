--
-- Copyright (c) 2022 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="kr",faction=1,date="2022-06-30T07:31:04Z",numCharacters=15306,lookup1={},recordSizeInBytes=2,encodingOrder={0,1,3}}
local F

-- chunk size: 6
F = function() provider.lookup1[1] = "\8\4\8\4\8\4" end F()

F = nil
RaiderIO.AddProvider(provider)
