function spellcheck()
    local api = vim.api;
    -- toggle spellcheck for the file
    api.nvim_command(':set invspell spelllang=en_us');
end
