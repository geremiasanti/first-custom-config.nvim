-- Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Install plugins
require("lazy").setup({
    -- needed
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
    }, {
        'tpope/vim-fugitive',
    }, {
        'lewis6991/gitsigns.nvim',
    },
    -- LSP
    {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      dependencies = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
          'williamboman/mason.nvim',
          build = function()
            pcall(vim.cmd, 'MasonUpdate')
          end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
    },
    -- statusline
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            {
                'nvim-tree/nvim-web-devicons',
                opt = true
            }
        }
    },
    -- startup
    {
        "startup-nvim/startup.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
        },
    },
    -- Hop
    {
      'phaazon/hop.nvim',
      branch = 'v2',
    },
    -- csv
    {
        'cameron-wags/rainbow_csv.nvim',
        config = true,
        ft = {
            'csv',
            'tsv',
            'csv_semicolon',
            'csv_whitespace',
            'csv_pipe',
            'rfc_csv',
            'rfc_semicolon'
        },
        cmd = {
            'RainbowDelim',
            'RainbowDelimSimple',
            'RainbowDelimQuoted',
            'RainbowMultiDelim'
        }
    },
    -- colorschemes
    {
        'rose-pine/neovim',
        name = 'rose-pine'
    }, {
        'huyvohcmc/atlas.vim'
    }, {
        'logico/typewriter-vim'
    }, {
        'fcpg/vim-farout'
    }, {
        'adigitoleo/vim-mellow'
    }, {
        'KabbAmine/yowish.vim'
    }, {
        'casperstorm/sort-hvid.vim'
    }, 
})

-- gitsigns
require('gitsigns').setup()

-- lsp-zero
local lsp = require('lsp-zero').preset({})
lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)
lsp.setup()

vim.diagnostic.config({
  virtual_text = false,
})

-- lualine
require('lualine').setup {
    options = {
        component_separators = { left = '|', right = '|'},
        section_separators = { left = '', right = ''},
    }
}

-- startup
require("startup").setup({theme = "startify"})

-- Hop
require("hop").setup()

-- Colorscheme
vim.cmd('colorscheme rose-pine')
--vim.cmd('colorscheme rose-pine-moon')
--vim.cmd('colorscheme rose-pine-dawn')
--vim.cmd('colorscheme atlas')
--vim.cmd('colorscheme typewriter-night')
--vim.cmd('colorscheme farout')
--vim.cmd('colorscheme mellow')
--vim.cmd('colorscheme yowish')
--vim.cmd('colorscheme sort')
