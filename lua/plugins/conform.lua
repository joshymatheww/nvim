return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },

    keys = {
      {
        "<leader>f",
        function()
          require("conform").format({
            async = false,
            lsp_format = "fallback",
          })
        end,
        mode = "",
        desc = "Format current file",
      },
    },

    opts = {
      formatters_by_ft = {
        python = { "ruff_format" },
      },

      format_on_save = {
        timeout_ms = 3000,
        lsp_format = "fallback",
      },
    },
  },
}

