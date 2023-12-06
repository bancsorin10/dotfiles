

function retard_case()
    -- get line
    local line = tostring(vim.api.nvim_get_current_line())

    for i = 1, line:len() do
        if i % 2 == 1 then
            line = line:sub(1, i-1) .. line:sub(i, i):upper() .. line:sub(i+1)
        else
            line = line:sub(1, i-1) .. line:sub(i, i):lower() .. line:sub(i+1)
        end
    end

    vim.api.nvim_set_current_line(line)
end
