-- For setting up linting and formatters
-- Don't forget to install linter and formatter of each language in :Mason

return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- Lua
        null_ls.builtins.formatting.stylua,
        -- Ruby
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.formatting.rubocop,
        -- JavaScript
        null_ls.builtins.formatting.prettier,
        require("none-ls.diagnostics.eslint_d"),
        -- Erb
        -- Required: gem install erb-formatter
        null_ls.builtins.formatting.erb_format.with({
          filetypes = { "eruby" },
        }),
        -- Genereal
        null_ls.builtins.completion.spell,
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
