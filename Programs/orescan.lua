local go = peripheral.find("geoScanner")
local inprogram = true
local function scan()
    if go then
        local blocks = go.scan(50)
        if blocks then
            for _, block in pairs(blocks) do
                print("---------------")
                print("Block Name: "..block.name)
                print("X: "..block.X)
                print("Y: "..block.Y)
                print("Z: "..block.Z)
                print("---------------")
            end
        else
            return
        end
    else
        print("No Geo Scanner found")
    end
end
local function main()
    print("Press 'enter' to scan, write 'exit' to exit the program")
    term.write(">> ")
    local input = read()
    if input ~= "exit" then
        scan()
    else
        inprogram = false
    end
end
while inprogram do
    main()
    sleep(0.1)
end