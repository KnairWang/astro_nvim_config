return {
  "windwp/nvim-ts-autotag",
  config = function(plugin, opts)
    require('nvim-ts-autotag').setup({
      opts = opts,
      per_filetype = {
        ["rust"] = {
          enable_close = false
        }
      }
    })
  end
}
