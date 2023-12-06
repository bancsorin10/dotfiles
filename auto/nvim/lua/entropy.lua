
function entropy_check()

    local buff = vim.api.nvim_get_hl_by_name("Normal", true)
    vim.pretty_print(buff)

end
