local ic = require("src.icecream")

local function testPosition()
    local x = 1
    local y = 1

    ic(x,y)

    ic:SetIsOutPutPosition(true)

    ic(x,y)
    ic:SetIsOutPutPosition(false)
end

local function testPrefix()
    local x = 1
    ic(x)

    ic:SetPrefix('arst')
    ic(x)

    ic:ResetPrefix()
    ic(x)
end

local function testIC()
    local x = 1
    local y = 2
    ic(x,y)
end

local function testNoName()
    ic(1,2)
end

local function testNoArg()
    ic()
end


local function testFunc()
    local a1 = 11
    local function func(a)
        return a + 23
    end
    ic(func(a1))
end

testPrefix()
testIC()
testPosition()
testNoName()
testNoArg()
testFunc()