local plugins = {
  --- Rust format on save ---
  {
    "rust-lang/rust.vim",
    ft = "rust", -- load on filetype
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
}

return plugins
