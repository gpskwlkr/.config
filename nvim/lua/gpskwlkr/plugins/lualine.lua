local status, lualine = pcall(require, "lualine")
if not status then
    print("Lualine not installed")
    return
end

lualine.setup()
