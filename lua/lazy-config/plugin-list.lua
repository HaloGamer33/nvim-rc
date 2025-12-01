Plugins = {
    'alec-gibson/nvim-tetris',         -- Tetris
    'barrett-ruth/live-server.nvim',   -- Live server
    'chentoast/marks.nvim',            -- Better marks
    'dstein64/vim-startuptime',        -- Startup Time
    'Eandrju/cellular-automaton.nvim', -- Little visual games for the text buffer
    'fladson/vim-kitty',               -- Syntax highlighting for kitty terminal config files
    'folke/twilight.nvim',             -- Focus on cursor dimming everything else
    'junegunn/vim-easy-align',         -- Align based on characters
    'koenverburg/peepsight.nvim',      -- Focus on cursor dimming everything else
    'lambdalisue/suda.vim',            -- Write/Read as sudo
    'LudoPinelli/comment-box.nvim',    -- Comment boxes
    'mbbill/undotree',                 -- See undos in a pretty UI
    'numToStr/Comment.nvim',           -- `gcc` to quickly comment
    'ThePrimeagen/vim-be-good',        -- ThePrimeagen goated game
    'xiyaowong/transparent.nvim',      -- Transparent backgrounds
    'rktjmp/hotpot.nvim',              -- Fennel integration (be able to run ':Fnlfile my-file.fnl' on Oxocarbon)

    -- Find and Replace
    {
        'MagicDuck/grug-far.nvim',
        -- Note (lazy loading): grug-far.lua defers all it's requires so it's lazy by default
        -- additional lazy config to defer loading is not really needed...
        config = function()
            -- optional setup call to override plugin options
            -- alternatively you can set options with vim.g.grug_far = { ... }
            require('grug-far').setup({
                -- options, see Configuration section below
                -- there are no required options atm
            });
        end
    },
    {
        "SergioRibera/codeshot.nvim",
    },      -- Create images from code 'screenshots'

    { "mistricky/codesnap.nvim", build = "make" },
    -- Quickly create logging statements
    {
        "chrisgrieser/nvim-chainsaw",
        event = "VeryLazy",
        opts = {} -- required even if left empty
    },
    -- Adds commands to copy path of the current file
    {
        'ohakutsu/socks-copypath.nvim',
        config = function()
            require('socks-copypath').setup()
        end,
    },
    -- Obsidian companion plugin
    {
        'epwalsh/obsidian.nvim',
        version = '*',
        lazy = true,
        ft = 'md',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
    },
    -- When typing a symbol that has a pair it automatically puts the other side
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
    -- This plugin makes it so lua LSP works on the Nvim configuration context
    {
        'folke/lazydev.nvim',
        ft = 'lua', -- only load on lua files
        opts = {
            library = {
                -- See the configuration section for more details
                -- Load luvit types when the `vim.uv` word is found
                { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
            },
        },
    },
    -- Use bindings to move selected text
    {
        'echasnovski/mini.move',
        version = false,
    },
    -- Center text with the help of two buffers on the edges of the screen
    {
        'shortcuts/no-neck-pain.nvim',
        config = function ()
            require('no-neck-pain').setup({
                width = 86
            })
        end
    },
    -- Have a prview of colors on top of the text (#FF0000)
    {
        'catgoose/nvim-colorizer.lua',
        -- event = 'BufReadPre',
        opts = { -- set to setup table
        },
        config = function ()
            require('colorizer').setup()
        end,
    },
    -- Startup dashboard for Neovim
    {
        'goolord/alpha-nvim',
        dependencies = { 'echasnovski/mini.icons' },
    },
    -- Have lines that show indentation
    {
        'lukas-reineke/indent-blankline.nvim',
        main = 'ibl',
        ---@module 'ibl'
        ---@type ibl.config
        opts = {},
    },
    -- Live Github-like markdown preview
    {
        'iamcco/markdown-preview.nvim',
        cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
        build = 'cd app && yarn install',
        init = function()
            vim.g.mkdp_filetypes = { 'markdown' }
        end,
        ft = { 'markdown' },
    },
    -- Harpoon, do I need to say more?
    {
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    -- It was supposed to be grammar help for comments and so, but its not working
    -- {
    --     'rhysd/vim-grammarous',
    --     dependencies = {
    --         'Shougo/vimproc.vim',
    --         'Shougo/unite.vim',
    --         'kana/vim-operator-user',
    --     },
    -- },
    -- File explorers
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons", -- optional, but recommended
        },
        lazy = false, -- neo-tree will lazily load itself
    },
    {
        'nvim-tree/nvim-tree.lua',
        version = '*',
        lazy = false,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require('nvim-tree').setup {}
        end,
    },
    -- The famous Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            vim.cmd.TSUpdate()
        end,
    },
    -- Code context with Treesitter
    {
        'nvim-treesitter/nvim-treesitter-context',
        config = function()
            require'treesitter-context'.setup{
                enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
                multiwindow = false, -- Enable multiwindow support.
                max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
                min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
                line_numbers = true,
                multiline_threshold = 20, -- Maximum number of lines to show for a single context
                trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
                mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
                -- Separator between context and content. Should be a single character string, like '-'.
                -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
                separator = nil,
                zindex = 20, -- The Z-index of the context window
                on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
            }
        end,
    },

    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    -- ┃                           Lsp                           ┃
    -- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',

    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    -- ┃                       Completion                        ┃
    -- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    'hrsh7th/nvim-cmp',
    {
        'L3MON4D3/LuaSnip',
        version = 'v2.*',
        -- install jsregexp (optional!)
        build = 'make install_jsregexp'
    },
    'hrsh7th/cmp-nvim-lsp',         -- Makes lsp's sources for completion
    'saadparwaiz1/cmp_luasnip',     -- Makes luasnips sources for completion
    'rafamadriz/friendly-snippets', -- Gives VSCode like Snipets in LuaSnip

    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    -- ┃                        Telescope                        ┃
    -- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'BurntSushi/ripgrep',
        }
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release'
    },
    -- Telescope file browser
    {
        'nvim-telescope/telescope-file-browser.nvim',
        dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' }
    },

    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    -- ┃                      Color schemes                      ┃
    -- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    'rebelot/kanagawa.nvim',
    'folke/tokyonight.nvim',
    'kepano/flexoki-neovim',
    'EdenEast/nightfox.nvim',
    'miikanissi/modus-themes.nvim',
    'maxmx03/fluoromachine.nvim',
    'nyoom-engineering/oxocarbon.nvim',
}
