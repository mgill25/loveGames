test = 200
local test = 20

function someFunction(test)
  if true then
    local test = 40
    print(test)   -- 40
  end
  print(test)     -- 30
end

someFunction(30)

print(test)       -- 20
