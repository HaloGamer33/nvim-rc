Plugins = {
    "LudoPinelli/comment-box.nvim",
    "terrortylor/nvim-comment",
    "barrett-ruth/live-server.nvim",
    "fladson/vim-kitty",
    "lambdalisue/suda.vim",
    "ThePrimeagen/vim-be-good",
    "junegunn/vim-easy-align",
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    {
        "rhysd/vim-grammarous",
        dependencies = {
            "Shougo/vimproc.vim",
            "Shougo/unite.vim",
            "kana/vim-operator-user",
        },
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },
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
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp"
    },
    "hrsh7th/cmp-nvim-lsp", -- Makes lsp's sources for completion.
    "saadparwaiz1/cmp_luasnip", -- Makes luasnips sources for completion.
    "rafamadriz/friendly-snippets", -- Gives VSCode like Snipets in LuaSnip.

    -- Telescope
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "BurntSushi/ripgrep",
        }
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make'
    },

    -- Color schemes
    "rebelot/kanagawa.nvim",
    "folke/tokyonight.nvim",
    "kepano/flexoki-neovim",
}
