local M  = {}

local find_mapping = function(maps, lhs)
    for _, v in ipairs(maps) do
        if v.lhs == lhs then
            return v
        end
    end
end

local mapping_printer = function(mode, mapping)
    print("Mode: ", mode, "|", 
        "Mapping: ", vim.inspect(mapping.lhs), "|", 
        "Command: ", vim.inspect(mapping.rhs)
    )
end

M.show_mapping = function(mode, lhs)
    local maps = vim.api.nvim_get_keymap(mode)
    local existing_maps = {}
    local existing = find_mapping(maps, lhs)

    if existing then
        table.insert(existing_maps, existing)
    end

    for _, v in pairs(existing_maps) do
        mapping_printer(mode, v)
    end
end

return M
