return {
  "ggandor/leap.nvim",
  enabled = true,
  keys = {
    { "f", mode = { "n", "x", "o" }, desc = "Leap Forward to" },
    { "F", mode = { "n", "x", "o" }, desc = "Leap Backward to" },
    { "gs", mode = { "n", "x", "o" }, desc = "Leap from Windows" },
  },
  config = function(_, opts)
    local leap = require("leap")
    for k, v in pairs(opts) do
      leap.opts[k] = v
    end

    -- Add default mappings gor Leap
    leap.add_default_mappings(true)

    -- Function to safely remove a keymap
    local function safe_del(mode, key)
      if vim.fn.mapcheck(key, mode) ~= "" then
        vim.keymap.del(mode, key)
      end
    end

    -- Safely remove the default 's' and 'S' mappings
    safe_del("n", "s")
    safe_del("x", "s")
    safe_del("o", "s")
    safe_del("n", "S")
    safe_del("x", "S")
    safe_del("o", "S")


    vim.keymap.set({ "n", "x", "o" }, "f", function() leap.leap { forward = true, inclusive = true } end)
    vim.keymap.set({ "n", "x", "o" }, "F", function() leap.leap { backward = true, inclusive = true } end)

    -- For `gs`, use leap.leap with the correct parameters
    vim.keymap.set({ "n", "x", "o" }, "gs", function() leap.leap { target_windows = vim.api.nvim_tabpage_list_wins(0) } end)
  end,
}
