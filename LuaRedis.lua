--[[
@author: Gonzalo Chacaltana <gchacaltanab@outlook.com>
Get sorted Set of Redis with LUA
]]
local set = "sortedSetinRedis"
local events = redis.call('zrange', set, 0, -1)
for key, value in pairs(events) do
    print(key..'->'..value)
end
