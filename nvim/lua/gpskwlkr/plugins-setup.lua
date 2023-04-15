vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {  
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine'
    })

    use("theprimeagen/harpoon")
    use({"nvim-treesitter/nvim-treesitter", run = function()
        require("nvim-treesitter.install").update({ with_sync = true })
    end,
})   

use("christoomey/vim-tmux-navigator") -- tmux & split window navigation

use("szw/vim-maximizer") -- maximizes and restores current window

-- essential plugins
use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome)
use("inkarkat/vim-ReplaceWithRegister") -- replace with register contents using motion (gr + motion)

-- commenting with gc
use("numToStr/Comment.nvim")

-- file explorer
use("nvim-tree/nvim-tree.lua")

-- vs-code like icons
use("nvim-tree/nvim-web-devicons")

-- statusline
use("nvim-lualine/lualine.nvim")
-- auto closing
use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

-- git integration
use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

-- autocompletion
use("hrsh7th/nvim-cmp") -- completion plugin
use("hrsh7th/cmp-buffer") -- source for text in buffer
use("hrsh7th/cmp-path") -- source for file system paths

use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
        'williamboman/mason.nvim',
        run = function()
            pcall(vim.cmd, 'MasonUpdate')
        end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
}
    }

    use({
        'Pocco81/auto-save.nvim',
        config = function()
            require("auto-save").setup {}
        end
    })
    use 'mfussenegger/nvim-dap'
    use 'leoluz/nvim-dap-go'
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use { 'mhartington/formatter.nvim' }
end)
