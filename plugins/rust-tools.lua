local rt = require "rust-tools"

rt.setup {
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "K", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>ca", rt.code_action_group.code_action_group, { buffer = bufnr })
      -- Enable inlay hints auto update and set them for all the buffers
      rt.inlay_hints.enable()
      -- RustRunnables
      vim.keymap.set("n", ",ru", rt.runnables.runnables, { buffer = bufnr })
      -- RustExpandMacro
      vim.keymap.set("n", ",em", rt.expand_macro.expand_macro, { buffer = bufnr })
      -- lsp rename
      vim.keymap.set("n", "<Leader>lr", vim.lsp.buf.rename, { buffer = bufnr })
    end,
  },
}
