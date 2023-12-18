return {
    "andrew-george/telescope-themes",
    config = function()
        require('telescope').load_extension('themes')
        vim.keymap.set("n", "<leader>th", ":Telescope themes<CR>", {noremap = true, silent = true, desc = "Theme Switcher"})
    end
}
