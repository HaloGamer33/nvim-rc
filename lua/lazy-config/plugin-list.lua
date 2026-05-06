Plugins = {
    "alec-gibson/nvim-tetris",           -- Tetris
    "barrett-ruth/live-server.nvim",     -- Live server
    "catgoose/nvim-colorizer.lua",       -- Have a prview of colors on top of the text (#FF0000)
    "chentoast/marks.nvim",              -- Better marks
    "dstein64/vim-startuptime",          -- Startup Time
    "Eandrju/cellular-automaton.nvim",   -- Little visual games for the text buffer
    "fladson/vim-kitty",                 -- Syntax highlighting for kitty terminal config files
    "folke/twilight.nvim",               -- Focus on cursor dimming everything else
    "johnfrankmorgan/whitespace.nvim",   -- Mark and remove trailling whitespace
    "junegunn/vim-easy-align",           -- Align based on characters
    "lambdalisue/suda.vim",              -- Write/Read as sudo
    "lewis6991/gitsigns.nvim",           -- Signal git changes inside buffers
    "LudoPinelli/comment-box.nvim",      -- Comment boxes
    "mbbill/undotree",                   -- See undos in a pretty UI
    "mks-h/treesitter-autoinstall.nvim", -- Auto install treesitter grammars
    "ohakutsu/socks-copypath.nvim",      -- Copy current file path
    "shortcuts/no-neck-pain.nvim",       -- Center text with the help of two buffers on the edges of the screen
    "smartpde/telescope-recent-files",   -- Obsidian companion plugin
    "ThePrimeagen/vim-be-good",          -- ThePrimeagen goated game
    "xiyaowong/transparent.nvim",        -- Transparent backgrounds

    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    -- ┃                      Color schemes                      ┃
    -- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    { "EdenEast/nightfox.nvim",           lazy = true },
    { "folke/tokyonight.nvim",            lazy = true },
    { "kepano/flexoki-neovim",            lazy = true },
    { "maxmx03/fluoromachine.nvim",       lazy = true },
    { "miikanissi/modus-themes.nvim",     lazy = true },
    { "nyoom-engineering/oxocarbon.nvim", lazy = true },
    { "rebelot/kanagawa.nvim",            lazy = true },

    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    -- ┃                           LSP                           ┃
    -- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    "neovim/nvim-lspconfig",
    "williamboman/mason-lspconfig.nvim",
    "williamboman/mason.nvim",

    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    -- ┃                        Completion                       ┃
    -- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
    "rafamadriz/friendly-snippets",
    "saadparwaiz1/cmp_luasnip",
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build   = "make install_jsregexp",
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
        lazy         = true,
        event        = { "BufReadPre *.md", "BufNewFile *.md" },
        dependencies = { "nvim-lua/plenary.nvim" },
        cond = function()
            return vim.fn.isdirectory(vim.fn.expand("~/halo-stash/2-Areas/Obsidian-Vault")) == 1
        end,
    },

    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    -- ┃                      UI & Editor                        ┃
    -- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    { "echasnovski/mini.move",               version = false          },
    { "folke/lazydev.nvim",                  ft      = "lua"          },
    { "folke/trouble.nvim",                  cmd     = "Trouble"      },
    { "folke/which-key.nvim",                event   = "VeryLazy"     },
    { "lukas-reineke/indent-blankline.nvim", main    = "ibl"          },
    { "windwp/nvim-autopairs",               event   = "InsertEnter",
                                             config  = true           },
    { "goolord/alpha-nvim",                  dependencies = { "echasnovski/mini.icons" },},
    { "ThePrimeagen/harpoon",                branch  = "harpoon2",
                                             dependencies = { "nvim-lua/plenary.nvim" },},
    {
        "ThePrimeagen/refactoring.nvim",
        lazy         = false,
        dependencies = { "lewis6991/async.nvim" },
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch       = "v3.x",
        lazy         = false,
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
        },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy   = false,
    },
    {
        "iamcco/markdown-preview.nvim",
        ft    = { "markdown" },
        cmd   = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init  = function() vim.g.mkdp_filetypes = { "markdown" } end,
    },
}
