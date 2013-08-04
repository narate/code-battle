--[[
    created by : Narate Ketram
    twitter @eNarate
    facebook https://www.facebook.com/koonnarate
--]]
local fin = io.open('numbers.txt', 'r')
local fout = io.open('run_result.txt', 'w')
local din = {}

if fin then
    for line in fin:lines() do
        if #line ~= 0 then
            table.insert(din,line)
        end
    end
    table.sort(din)
    local count, before, current, diff = 0, -1, 0, 0
    for i,current in ipairs(din) do
        diff = current - before
        while diff > 1 do
            fout:write(string.format("%04d\n", count));
            diff = diff - 1
            count = count + 1
        end
        before = current
        count = count + 1
    end
    fin:close()
    fout:close()
end
print('done :)')
