Plugins = {
    "alec-gibson/nvim-tetris",           -- Tetris
    "barrett-ruth/live-server.nvim",     -- Live server
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
    "stevearc/conform.nvim",
    "nxhung2304/lastplace.nvim",

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
    { "kepano/flexoki",                   lazy = true },
    { "rose-pine/nvim",                   lazy = true },

    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    -- ┃                           LSP                           ┃
    -- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    "neovim/nvim-lspconfig",
    "williamboman/mason-lspconfig.nvim",
    "williamboman/mason.nvim",

    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    -- ┃                        Completion                       ┃
    -- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    {
        'saghen/blink.cmp',
        -- Optional: provides snippets for the snippet source
        dependencies = { 'rafamadriz/friendly-snippets' },
        -- Stable version
        version = '1.*',

        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
            -- 'super-tab' for mappings similar to vscode (tab to accept)
            -- 'enter' for enter to accept
            -- 'none' for no mappings
            --
            -- All presets have the following mappings:
            -- C-space: Open menu or open docs if already open
            -- C-n/C-p or Up/Down: Select next/previous item
            -- C-e: Hide menu
            -- C-k: Toggle signature help (if signature.enabled = true)
            --
            -- See :h blink-cmp-config-keymap for defining your own keymap
            keymap = { preset = 'default' },

            appearance = {
                -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
                -- Adjusts spacing to ensure icons are aligned
                nerd_font_variant = 'mono'
            },

            -- (Default) Only show the documentation popup when manually triggered
            completion = { documentation = { auto_show = false } },

            -- Default list of enabled providers defined so that you can extend it
            -- elsewhere in your config, without redefining it, due to `opts_extend`
            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },

            -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
            -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
            -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
            --
            -- See the fuzzy documentation for more information
            fuzzy = { implementation = "prefer_rust_with_warning" }
        },
        opts_extend = { "sources.default" }
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
    -- lazy.nvim
    {
        "catgoose/nvim-colorizer.lua",
        event = "BufReadPre",
        opts = {
            options = { parsers = { css = true } },
        },
    },
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
