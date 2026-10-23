return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "none", -- Clear defaults to avoid conflicts
        ["<Tab>"] = {
          function(cmp)
            if cmp.is_visible() then
              return cmp.select_next()
            elseif cmp.snippet_active() then
              return cmp.snippet_forward()
            else
              return false -- Fallback to normal browser/editor Tab behavior (indentation)
            end
          end,
          "fallback",
        },
        ["<S-Tab>"] = {
          function(cmp)
            if cmp.is_visible() then
              return cmp.select_prev()
            elseif cmp.snippet_active() then
              return cmp.snippet_backward()
            else
              return false -- Fallback to normal Shift-Tab (outdent)
            end
          end,
          "fallback",
        },
        ["<CR>"] = { "accept", "fallback" },
        ["<C-e>"] = { "hide", "fallback" },
      },
    },
  },
}
