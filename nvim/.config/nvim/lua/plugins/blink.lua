return {
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        list = {
          -- Don't preselect, so the first <Tab> selects the first item
          selection = { preselect = false, auto_insert = true },
        },
      },
      keymap = {
        preset = "none", -- Clear defaults to avoid conflicts
        -- Each command returns true when it handles the key, otherwise the next one is tried
        ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
        ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
        -- Accept/expand the selected item (snippets get expanded)
        ["<S-CR>"] = { "accept", "fallback" },
        ["<C-y>"] = { "accept", "fallback" }, -- for terminals that can't send <S-CR>
        ["<C-e>"] = { "hide", "fallback" },
        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      },
    },
  },
}
