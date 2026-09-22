return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      list = {
        selection = {
          preselect = true,
          auto_insert = false,
        },
      },
    },
    keymap = {
      ["<Tab>"] = { "select_next", "accept" },
      ["<S-Tab>"] = { "select_prev" },
    },
  },
}
