function run_file_extension()
    local filename = vim.fn.expand('%')
    local filen = filename:match("([^/]+)%.([^.]+)$")
    local extension = filename:gsub(filen, "")
    if extension == ".py" then
        vim.cmd('!python3 ' .. vim.fn.expand('%')) 
    else
        print("Unsupported file type: " .. extension) 
    end
end
