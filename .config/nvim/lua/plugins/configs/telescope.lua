local present, telescope = pcall(require, "telescope")

if not present then
    print("Couldn't load nvim-telescope")
    return
end

telescope.setup({
    -- picker specific options
    pickers = {
        find_files = {
            theme = "dropdown"
        }
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case"
        }
    }
})
telescope.load_extension("fzf")


-- telescope specific keybindings
local map = vim.keymap.set

options = { noremap = true }
map('n', '<F3>', function() require("telescope.builtin").builtin() end, options)
map('n', '<leader>ff', function() require("telescope.builtin").find_files() end, options)
map('n', '<leader>fg', function() require("telescope.builtin").live_grep() end, options)
map('n', '<leader>fs', function() require("telescope.builtin").grep_string() end, options)
map('n', '<leader>fh', function() require("telescope.builtin").help_tags() end, options)

