Plugins = {
    -- On trial
    {
        'barreiroleo/ltex_extra.nvim',
        config = function()
            require("socks-copypath").setup()
        end,
    },
    'ohakutsu/socks-copypath.nvim',
    {
        "catgoose/nvim-colorizer.lua",
        event = "BufReadPre",
        opts = { -- set to setup table
        },
    },
    {
        'shortcuts/no-neck-pain.nvim',
        config = function ()
            require('no-neck-pain').setup({
                width = 80
            })
        end
    },
    {
        'echasnovski/mini.move',
        version = false,
        config = function ()
            require('mini.move').setup({
                -- Module mappings. Use `''` (empty string) to disable one.
                mappings = {
                    -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
                    left = 'H',
                    right = 'L',
                    down = 'J',
                    up = 'K',

                    -- Move current line in Normal mode
                    line_left = '',
                    line_right = '',
                    line_down = '',
                    line_up = '',
                },

                -- Options which control moving behavior
                options = {
                    -- Automatically reindent selection during linewise vertical move
                    reindent_linewise = true,
                },
            }
            )
        end
    },
    {
        'sbdchd/neoformat',
        config = function ()
            vim.g.neoformat_typescript_prettier = {
                exe = 'prettier',
                args = {
                    '--stdin-filepath',
                    '"%:p"',
                    '--tab-width',
                    '4',
                    '--single-quote',
                    '--experimental-ternaries',
                },
                stdin = 1
            }
            vim.g.neoformat_javascript_prettier = {
                exe = 'prettier',
                args = {
                    '--stdin-filepath',
                    '"%:p"',
                    '--tab-width',
                    '4',
                    '--single-quote',
                    '--experimental-ternaries',
                },
                stdin = 1
            }
        end
    },
    {
        'karb94/neoscroll.nvim',
        config = function ()
            require('neoscroll').setup{
                hide_cursor = true,
                duration_multiplier = 0.05,
                easing = 'linear',
            }
        end
    },
    {
        'goolord/alpha-nvim',
        dependencies = { 'echasnovski/mini.icons' },
    },
    {
        'vyfor/cord.nvim',
        build = ':Cord update',
        -- opts = {}
    },
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
    {
        'lukas-reineke/indent-blankline.nvim',
        main = 'ibl',
        ---@module 'ibl'
        ---@type ibl.config
        opts = {},
    },
    {
        'windwp/nvim-ts-autotag',
        config = function()
            require('nvim-ts-autotag').setup({
                opts = {
                    -- Defaults
                    enable_close = true, -- Auto close tags
                    enable_rename = true, -- Auto rename pairs of tags
                    enable_close_on_slash = false -- Auto close on trailing </
                }
            })
        end
    },
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
    -- End of on trial plugins

    'mbbill/undotree',                 -- See undos in a pretty UI
    'dstein64/vim-startuptime',        -- Startup Time
    'chentoast/marks.nvim',            -- Better marks
    'alec-gibson/nvim-tetris',         -- Tetris
    'Eandrju/cellular-automaton.nvim', -- Text on buffer melts
    'LudoPinelli/comment-box.nvim',    -- Comment boxes
    'terrortylor/nvim-comment',        -- `gcc` to quickly comment
    'barrett-ruth/live-server.nvim',   -- Live server
    'fladson/vim-kitty',               -- Syntax highlighting for kitty terminal config files
    'lambdalisue/suda.vim',            -- Write/Read as sudo
    'ThePrimeagen/vim-be-good',        -- ThePrimeagen goated game
    'junegunn/vim-easy-align',         -- Align based on characters
    'xiyaowong/transparent.nvim',      -- Transparent backgrounds
    'folke/twilight.nvim',             -- Focus on cursor dimming everything else
    'koenverburg/peepsight.nvim',      -- Focus on cursor dimming everything else

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

    -- File explorer
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

    -- Lsp
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',

    -- Completion
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

    -- Telescope
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

    -- Color schemes
    'rebelot/kanagawa.nvim',
    'folke/tokyonight.nvim',
    'kepano/flexoki-neovim',
    'EdenEast/nightfox.nvim',
    'miikanissi/modus-themes.nvim',
    'maxmx03/fluoromachine.nvim',
    'nyoom-engineering/oxocarbon.nvim',
}
