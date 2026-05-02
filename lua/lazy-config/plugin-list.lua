Plugins = {
    "alec-gibson/nvim-tetris",           -- Tetris
    "barrett-ruth/live-server.nvim",     -- Live server
    "chentoast/marks.nvim",              -- Better marks
    "dstein64/vim-startuptime",          -- Startup Time
    "Eandrju/cellular-automaton.nvim",   -- Little visual games for the text buffer
    "fladson/vim-kitty",                 -- Syntax highlighting for kitty terminal config files
    "folke/twilight.nvim",               -- Focus on cursor dimming everything else
    "junegunn/vim-easy-align",           -- Align based on characters
    "lambdalisue/suda.vim",              -- Write/Read as sudo
    "LudoPinelli/comment-box.nvim",      -- Comment boxes
    "mbbill/undotree",                   -- See undos in a pretty UI
    "ThePrimeagen/vim-be-good",          -- ThePrimeagen goated game
    "xiyaowong/transparent.nvim",        -- Transparent backgrounds
    "smartpde/telescope-recent-files",   -- Obsidian companion plugin
    "johnfrankmorgan/whitespace.nvim",   -- Mark and remove trailling whitespace
    "lewis6991/gitsigns.nvim",           -- Signal git changes inside buffers
    "mks-h/treesitter-autoinstall.nvim", -- Auto install treesitter grammars
    "ohakutsu/socks-copypath.nvim",      -- Copy current file path
    "shortcuts/no-neck-pain.nvim",       -- Center text with the help of two buffers on the edges of the screen
    "catgoose/nvim-colorizer.lua",       -- Have a prview of colors on top of the text (#FF0000)

    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    -- ┃                      Color schemes                      ┃
    -- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    { "rebelot/kanagawa.nvim",        lazy = true },
    { "folke/tokyonight.nvim",        lazy = true },
    { "kepano/flexoki-neovim",        lazy = true },
    { "EdenEast/nightfox.nvim",       lazy = true },
    { "miikanissi/modus-themes.nvim", lazy = true },
    { "maxmx03/fluoromachine.nvim",   lazy = true },
    { "nyoom-engineering/oxocarbon.nvim", lazy = true },

    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    -- ┃                           LSP                           ┃
    -- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",

    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    -- ┃                        Completion                       ┃
    -- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp",
    },

    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    -- ┃                        Telescope                        ┃
    -- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim", "BurntSushi/ripgrep" },
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    },
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
    },

    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    -- ┃                        Obsidian                         ┃
    -- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    "obsidian-nvim/obsidian.nvim",
    {
        "oflisback/obsidian-bridge.nvim",
        lazy = true,
        event = { "BufReadPre *.md", "BufNewFile *.md" },
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    -- ┃                      UI & Editor                        ┃
    -- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    { "folke/which-key.nvim",       event = "VeryLazy" },
    { "folke/trouble.nvim",         cmd = "Trouble" },
    { "windwp/nvim-autopairs",      event = "InsertEnter", config = true },
    { "echasnovski/mini.move",      version = false },
    { "folke/lazydev.nvim",         ft = "lua" },
    { "lukas-reineke/indent-blankline.nvim", main = "ibl" },
    { "goolord/alpha-nvim",
        dependencies = { "echasnovski/mini.icons" },
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    {
        "ThePrimeagen/refactoring.nvim",
        lazy = false,
        dependencies = { "lewis6991/async.nvim" },
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
        },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
    },
    {
        "iamcco/markdown-preview.nvim",
        ft = { "markdown" },
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function() vim.g.mkdp_filetypes = { "markdown" } end,
    },
}
