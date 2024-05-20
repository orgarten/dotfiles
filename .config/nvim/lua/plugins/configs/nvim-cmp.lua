local present, cmp = pcall(require, "cmp")

if not present then 
    print("Couldn't load cmp!")
    return
end

-- snippy => snippet pluging
local snippy_present, snippy = pcall(require, "snippy")
if not snippy_present then
    print("CMP needs snippy!")
    return
end

local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line-1, line, true)[1]:sub(col, col):match("%s") == nil
end

--snippy.setup({
--    mappings = {
--        is = {
--            ["<Tab>"] = "expand_or_advance",
--            ["<S-Tab>"] = "previous",
--        }
--    },
--})

cmp.setup({
    snippet = {
        expand = function(args)
            snippy.expand_snippet(args.body)
        end,
    },
    -- Tab: get next one
    -- Shift-Tab: get previous one
    mapping = {
        ["<C-Space>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.close()
            else
                cmp.complete()
            end
        end, {"i", "s"}), -- this mapping is for mode "insert" and "select"
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif snippy.can_expand_or_advance() then
                snippy.expand_or_advance()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, 
        {"i", "s"}),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif snippy.can_jump(-1) then
                snippy.previous()
            else
                fallback()
            end
        end, 
        {"i", "s"}),
        ["<CR>"] = cmp.mapping.confirm({select = true}),
        ["<C-c>"] = cmp.mapping.close(),
    },
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "snippy" }
    }, {
        { name = "buffer" },
    })
})
