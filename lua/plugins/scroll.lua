return {
  "declancm/cinnamon.nvim",
  config = function()
    local cinnamon = require("cinnamon")
    cinnamon.setup({
      -- Enable all provided keymaps
      keymaps = {
        basic = true,
        extra = true,
      },
      -- Only scroll the window
      options = { mode = "window" },
    })
  end,
}
