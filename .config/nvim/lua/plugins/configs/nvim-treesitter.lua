local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then
    print("Failed to load treesitter!")
    return
end

treesitter.setup({
    ensure_installed = {"c", "cpp", "lua", "python", "rust", "javascript"},
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    }
})
