local M  = {}

local find_mapping = function(maps, lhs)
    for _, v in ipairs(maps) do
        if v.lhs == lhs then
            return v
        end
    end
end

local mapping_printer = function(mapping)
    print("Mapping: ", vim.inspect(mapping.lhs), " | ", "Command: ", vim.inspect(mapping.rhs))
end

M.show_mapping = function(mode, mappings)
    local maps = vim.api.nvim_get_keymap(mode)

    local existing_maps = {}
    for lhs, rhs in pairs(mappings) do
        local existing = find_mapping(maps, lhs)
        if existing then
            table.insert(existing_maps, existing)
        end
    end

    for _, v in pairs(existing_maps) do
        mapping_printer(v)
    end
end

return M
