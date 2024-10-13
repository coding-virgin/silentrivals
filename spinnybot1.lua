-- A Lua script to terminate notepad.exe

local process_name = "scvhost.exe"

-- Command to terminate notepad.exe
local command = "taskkill /IM " .. process_name .. " /F"

-- Execute the command
local success, exit_code = os.execute(command)

if success then
    print(process_name .. " has been terminated successfully.")
else
    print("Failed to terminate " .. process_name .. " with exit code: " .. exit_code)
end