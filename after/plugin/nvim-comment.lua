require("nvim_comment").setup({
    comment_empty = false,
    line_mapping = "<leader>cl",
    operator_mapping = "<leader>c",
})

vim.api.nvim_command [[autocmd! FileType asciidoc :lua vim.api.nvim_buf_set_option(0, "commentstring", "// %s")]]
