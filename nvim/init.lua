-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.api.nvim_create_autocmd("FileType", {
  pattern = "idris2",
  callback = function()
    vim.lsp.start({
      name = "idris2",
      cmd = { "idris2-lsp" },
      root_dir = vim.fs.dirname(vim.fs.find({ "fp.ipkg", ".git" }, { upward = true })[1]),
      cmd_env = {
        DYLD_LIBRARY_PATH = "/Users/marcuskikerpill/.local/lib:/Users/marcuskikerpill/.idris2/idris2-0.8.0/lib",
      },
    })
  end,
})
