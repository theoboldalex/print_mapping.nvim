printmap = function(...)
    local args = {}
    -- TODO: Find a better way to pull put cmd args into lua
    for i, v in ipairs(...) do
        if i == 4 then
            args["mode"] = v
        end
        if i == 5 then
            args["map"] = v
        end
    end

    return require("print_mapping").show_mapping(args["mode"], {[args["map"]] = ""})
end

vim.cmd([[command! -nargs=* -range Printmap call luaeval("printmap(_A)", [<line1>, <line2>, <count>, <f-args>])]])
