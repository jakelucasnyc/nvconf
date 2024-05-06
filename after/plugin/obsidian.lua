local obsidian = require("obsidian")
local util = obsidian.util

obsidian.setup({

    ui = {
        enable = false,
    },
    workspaces = {
        {
            name = "NunyaNotes",
            path = "/mnt/c/NunyaNotes",
        },
    },

    daily_notes = {
        folder = "notes/daily",
        template = "daily_template.md",
    },
    
    notes_subdir = "inbox",
    new_notes_location = "notes_subdir",

    --detect_cwd = false,
    completion = {
        nvim_cmp = true,
        min_chars = 2,
        --preferred_link_style = "wiki",
        --prepend_note_path = true,
    },
    
    wiki_link_function = function(opts)
        return require("obsidian.util").wiki_link_path_prefix(opts)
    end,


    templates = {
        subdir = "templates",
        date_format = "%Y/%m/%d %A",
        time_format = "%H%M",
    },

    sort_by = "modified",
    sort_reversed = true,

})

-- vim.keymap.set("n", "gf", util.gf_passthrough)

vim.keymap.set("n", "<leader>dn", ":ObsidianToday<CR>")
vim.keymap.set("n", "<leader>tn", ":ObsidianToday +1<CR>")
vim.keymap.set("n", "<leader>yn", ":ObsidianToday -1<CR>")
vim.keymap.set("n", "<leader>nf", ":ObsidianQuickSwitch<CR>")
vim.keymap.set("v", "<leader>en", ":ObsidianExtractNote<CR>")

-- Setting DateTime shortcuts for notes

-- vim.keymap.set("n", "<leader>ss", function()
--     date = os.date("%Y/%m/%d %A %H%M", os.time())
--     header = "i#####(SOS) " .. date .. ":<CR><CR>Actions:<CR>- [ ] <CR><CR>Thoughts:<CR><CR>Summary:<CR><CR><Esc>6ko- [ ] "
--     return header
--    
-- end, { expr = true })
vim.keymap.set("n", "<leader>ss", ":ObsidianTemplate start_session_template.md<CR>")

vim.keymap.set("n", "<leader>es", ":ObsidianTemplate end_session_template.md<CR>")


-- vim.keymap.set("n", "<leader>es", function()
--     date = os.date("%Y/%m/%d %A %H%M", os.time())
--     header = "i(EOS) " .. date .. "<CR><----------><CR><Esc>"
--     return header
--    
-- end, { expr = true })

vim.keymap.set("n", "<leader>bn", function()
    title = vim.fn.input("Enter Title: ")
    if title == "" then
        title = "Brain Note"
    end
    brain_note_path = "notes/brain/" .. title
    new_command = ':ObsidianNew ' .. brain_note_path ..'<CR><Esc>'
    template_command = "Go<Esc>:ObsidianTemplate brain_template.md<CR><Esc>:w<CR>"
    return new_command .. template_command
end, { expr = true })

-- vim.opt_local.conceallevel = 2 
-- vim.opt.conceallevel = 1 

 vim.opt_local.conceallevel = 1
 vim.opt.conceallevel = 1 

