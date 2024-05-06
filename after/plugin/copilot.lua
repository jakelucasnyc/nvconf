require("copilot").setup({
    filetypes = {
        python = true,
        javascript = true,
        typescript = true,
    },
    suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
            accept = "<M-l>",
            prev = "<M-[>",
            next = "<M-]>",
            dismiss = "<C-]>",
        },
    }


})
