local present, lualine = pcall(require, "lualine")

if not present then 
    print("Could not load lualine")
    return
end

lualine.setup()


