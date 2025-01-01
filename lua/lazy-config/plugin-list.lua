Plugins = {
    -- "Aadv1k/gdoc.vim",                 -- Google Docs
    "dstein64/vim-startuptime",        -- Startup Time
    "chentoast/marks.nvim",            -- Better marks
    "alec-gibson/nvim-tetris",         -- Tetris
    "Eandrju/cellular-automaton.nvim", -- Text on buffer melts
    "LudoPinelli/comment-box.nvim",    -- Comment boxes
    "terrortylor/nvim-comment",        -- `gcc` to quickly comment
    "barrett-ruth/live-server.nvim",   -- Live server
    "fladson/vim-kitty",               -- Syntax highlighting for kitty terminal config files
    "lambdalisue/suda.vim",            -- Write/Read as sudo
    "ThePrimeagen/vim-be-good",        -- ThePrimeagen goated game
    "junegunn/vim-easy-align",         -- Align based on characters
    "xiyaowong/transparent.nvim",      -- Transparent backgrounds
    "folke/twilight.nvim",             -- Focus on cursor dimming everything else
    "koenverburg/peepsight.nvim",      -- Focus on cursor dimming everything else
    "folke/neodev.nvim",               -- Make neovim's LSP recognize the Nvim API
    "nvimdev/indentmini.nvim",         -- Indent Lines

    -- Live Github-like markdown preview
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },

    -- Harpoon, do I need to say more?
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    -- It was supposed to be grammar help for comments and so, but its not working
    {
        "rhysd/vim-grammarous",
        dependencies = {
            "Shougo/vimproc.vim",
            "Shougo/unite.vim",
            "kana/vim-operator-user",
        },
    },

    -- File explorer
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },

    -- The famous treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            vim.cmd.TSUpdate()
        end,
    },

    -- Lsp
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    -- Completion
    "hrsh7th/nvim-cmp",
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        -- install jsregexp (optional!)
        build = "make install_jsregexp"
    },
    "hrsh7th/cmp-nvim-lsp",         -- Makes lsp's sources for completion
    "saadparwaiz1/cmp_luasnip",     -- Makes luasnips sources for completion
    "rafamadriz/friendly-snippets", -- Gives VSCode like Snipets in LuaSnip

    -- Telescope
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "BurntSushi/ripgrep",
        }
    },
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make"
    },
    -- Telescope file browser
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    },

    -- Color schemes
    "rebelot/kanagawa.nvim",
    "folke/tokyonight.nvim",
    "kepano/flexoki-neovim",
}
