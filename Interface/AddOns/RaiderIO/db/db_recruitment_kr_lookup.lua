--
-- Copyright (c) 2022 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="kr",date="2022-07-18T07:28:32Z",numCharacters=14737,lookup={},recordSizeInBytes=2,encodingOrder={0,1,3}}
local F

-- chunk size: 8
F = function() provider.lookup[1] = "\8\4\8\4\8\4\8\4" end F()

F = nil
RaiderIO.AddProvider(provider)