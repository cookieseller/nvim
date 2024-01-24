vim.keymap.set('n', '<leader>ap', function()
    local ok, autopairs = pcall(require, "nvim-autopairs")
    if ok then
        if autopairs.state.disabled then
            autopairs.enable()
            print("autopairs on")
        else
            autopairs.disable()
            print("autopairs off")
        end
    else
        print("autopairs not available")
    end
end)

return {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
