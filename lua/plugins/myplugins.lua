local plugins = {
  {
    "nvim-focus/focus.nvim",
    event = "VeryLazy",
    config = function()
        require("focus").setup({
            enable = true, -- Enable module
            commands = true, -- Create Focus commands
            autoresize = {
                enable = true, -- Enable or disable auto-resizing of splits
                width = 0, -- Force width for the focused window
                height = 0, -- Force height for the focused window
                minwidth = 0, -- Force minimum width for the unfocused window
                minheight = 0, -- Force minimum height for the unfocused window
                height_quickfix = 10, -- Set the height of quickfix panel
            },
            split = {
                bufnew = false, -- Create blank buffer for new split windows
                tmux = false, -- Create tmux splits instead of neovim splits
            },
            ui = {
                number = false, -- Display line numbers in the focussed window only
                relativenumber = false, -- Display relative line numbers in the focussed window only
                hybridnumber = false, -- Display hybrid line numbers in the focussed window only
                absolutenumber_unfocussed = false, -- Preserve absolute numbers in the unfocussed windows
        
                cursorline = true, -- Display a cursorline in the focussed window only
                cursorcolumn = false, -- Display cursorcolumn in the focussed window only
                colorcolumn = {
                    enable = false, -- Display colorcolumn in the foccused window only
                    list = '+1', -- Set the comma-saperated list for the colorcolumn
                },
                signcolumn = true, -- Display signcolumn in the focussed window only
                winhighlight = false, -- Auto highlighting for focussed/unfocussed windows
            },
        })
    end,
  },
  {
    -- Debug Adapter Protocol UI
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  {
    -- Debug Adapter Protocol for C++ and others
    "mfussenegger/nvim-dap",
-- TODO: I think the lines below ae supposed to load the dap keymappings when in DAP module
--       However, right now the keymappings are always loaded. another TODO in mappings.lua is about this
--    config = function(_,_)
--      require("core.utils").load_mappings("dap")
--    end,
  },
  {
        -- Debug adapter Protocol for C++ and others
        "jay-babu/mason-nvim-dap.nvim",
        event = "VeryLazy",
        dependencies = {
            "williamboman/mason.nvim",
            "mfussenegger/nvim-dap",

        },
        opts = {
            handlers = {}, -- empty means load default handlers
            ensure_installed = {
                "codelldb",
            },
        },
  },
--  {
--    -- Debug Adapter Protocol for Python
--    "mfussenegger/nvim-dap-python",
--    ft = "python",
--    dependencies = {
--      "mfussenegger/nvim-dap",
--      "rcarriga/nvim-dap-ui",
--    },
--    config = function(_,_)
--      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
--      require("dap-python").setup(path)
--      require("core.utils").load_mappings("dap_python")
--    end,
--  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    --ft = {"python"}, -- not mentioned in c++ setup video, but in python video
    opts = function()
      return require("configs.null-ls")
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "debugpy",
        "mypy",
        "ruff",
        "pyright",
        "rust-analyzer",
        "clangd",       -- C++ LSP
        "clang-format", -- C++ formatter
        "codelldb",     -- used for c++ debuggng
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "nvchad.configs.lspconfig"
      require "configs.lspconfig"
    end,
  },
 {
    "christoomey/vim-tmux-navigator",
    vim.keymap.set('n', '<C-h>', ':TmuxNavigateLeft<CR>'),
 },
--  {
--    "jackMort/chatGPT.nvim",
--    event = "VeryLazy",
--    dependencies = {
--        "MunifTanjim/nui.nvim",
--        "nvim-lua/plenary.nvim",
--        "nvim-telescope/telescope.nvim"
--    },
--    config = function()
--        require("chatgpt").setup({
--            --async_api_key_cmd = "pass show api/tokens/openai",
--            api_key_cmd = "echo xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
--        })
--    end,
--  },
--  {
--    "alexghergh/nvim-tmux-navigation",
--    config = function()
--
--        local nvim_tmux_nav = require('nvim-tmux-navigation')
--
--        nvim_tmux_nav.setup {
--            disable_when_zoomed = true, -- defaults to false
--        }
--
--        vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
--        vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
--        vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
--        vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
--        vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
--        vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
--
--    end,
--  },
--  {
--    "christoomey/vim-tmux-navigator",
--    config = function()
--        require('vim-tmux-navigator').setup()
--    end,
--  },
  {
    "vimwiki/vimwiki",
  },
  {  
    "github/copilot.vim",     
    lazy = false,     
    config = function()  -- Mapping tab is already used by NvChad       
        vim.g.copilot_no_tab_map = true;       
        vim.g.copilot_assume_mapped = true;       
        vim.g.copilot_tab_fallback = "";  -- The mapping is set to other key, see custom/lua/mappings  -- or run <leader>ch to see copilot mapping section
    end   
  },
}
return plugins
