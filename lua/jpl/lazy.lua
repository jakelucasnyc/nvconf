local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	  vim.fn.system({
		      "git",
		          "clone",
			      "--filter=blob:none",
			          "https://github.com/folke/lazy.nvim.git",
				      "--branch=stable", -- latest stable release
				          lazypath,
					    })
				    end
				    vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    "nvim-tree/nvim-web-devicons",
	"nvim-telescope/telescope.nvim",
	"nvim-lua/plenary.nvim",
	{ "rose-pine/neovim", name = "rose-pine" },
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
    {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" }
    },

	"mbbill/undotree",

    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    -- LSP Support
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false,
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            {'hrsh7th/cmp-nvim-lsp'},
        }
    },
    -- Autocompletion
    { 'L3MON4D3/LuaSnip' },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            { 'L3MON4D3/LuaSnip' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-cmdline' },
        },
        event = { "InsertEnter", "CmdlineEnter" },
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {},
    },
    -- {
    --     "epwalsh/obsidian.nvim",
    --     commit = "6888c76",
    --     --branch = "main"
    --     ft = "markdown",
    --     lazy = false,
    --     dependencies = {
    --         "nvim-lua/plenary.nvim",
    --     },
    -- },
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,

    },
    { "HiPhish/nvim-ts-rainbow2" },
    { "terrortylor/nvim-comment" },
    {
        'stevearc/aerial.nvim',
        opts = {},
        -- Optional dependencies
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons"
        },
    },
    {
        'kristijanhusak/vim-dadbod-ui',
        dependencies = {
            { 'tpope/vim-dadbod', lazy = true },
            { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
        },
        cmd = {
            'DBUI',
            'DBUIToggle',
            'DBUIAddConnection',
            'DBUIFindBuffer',
        },
    },
    {
      "NeogitOrg/neogit",
      tag = "v0.0.1",
      dependencies = {
        "nvim-lua/plenary.nvim",         -- required
        "sindrets/diffview.nvim",        -- optional - Diff integration

        -- Only one of these is needed, not both.
        "nvim-telescope/telescope.nvim", -- optional
      },
      config = true
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    {
      "kndndrj/nvim-dbee",
      dependencies = {
        "MunifTanjim/nui.nvim",
      },
      build = function()
        -- Install tries to automatically detect the install method.
        -- if it fails, try calling it with one of these parameters:
        --    "curl", "wget", "bitsadmin", "go"
        require("dbee").install()
      end,
    },
    "Vimjas/vim-python-pep8-indent",
    
}
	

})
