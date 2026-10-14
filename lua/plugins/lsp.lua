return {
  -- 1. Mason handles downloading the binaries
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- 2. Mason-lspconfig ensures they are installed AND initializes them automatically
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "clangd",         -- C/C++
          "rust_analyzer",  -- Rust
          "pyright",        -- Python
          "gopls",          -- Go
          "ts_ls",          -- JS/TS
          "svelte",         -- Svelte
          "lua_ls",         -- Neovim config
        },
        handlers = {
          -- The first entry with no key is the default handler.
          -- This dynamically configures all installed servers using the updated API
          function(server_name)
            require("lspconfig")[server_name].setup({})
          end,
	 -- Specific override handler for clangd
          ["clangd"] = function()
            require("lspconfig").clangd.setup({
              cmd = {
                "clangd",
                "--background-index",
                -- Tell clangd to query your system's g++ and gcc paths for headers
                "--query-driver=/usr/bin/g++,/usr/bin/gcc", 
              },
            })
          end,
        },
      })
    end,
  },

  -- 3. Nvim-lspconfig handles keymaps
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Put your global keymaps here so they load alongside lspconfig
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to Definition" })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Hover Documentation" })
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = "Rename Symbol" })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Code Action" })

      vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = "Show Line Diagnostics" })
      vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to Previous Diagnostic" })
      vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to Next Diagnostic" })
    end,
  },
}

