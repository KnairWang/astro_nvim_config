--
-- The > key mapping may conflict with ts-autotag


return {
  "windwp/nvim-autopairs",
  -- event = "InsertEnter",
  -- enabled = true,
  -- opts = {
  --   ignored_next_char = "[%w%.%(%{%[<]",
  --   fast_wrap = {
  --     chars = { "{", "[", "(", '"', "'", "`" },
  --   },
  -- },
  config = function(plugin, opts)
    require "astronvim.plugins.configs.nvim-autopairs" (plugin, opts)

    local npairs = require 'nvim-autopairs'
    local Rule = require 'nvim-autopairs.rule'
    local cond = require 'nvim-autopairs.conds'

    local start_char = '<'
    local end_char = '>'
    npairs.add_rules({
      Rule(start_char, end_char, "rust")
          :with_pair(cond.before_text("::"), 2)
          :with_move(function(op) return op.char == end_char end)
          :with_del(cond.done()),

      Rule(start_char, end_char, "rust")
          :with_pair(cond.before_regex("%w"), 1)
          :with_move(function(op) return op.char == end_char end)
          :with_del(cond.done()),
    })
  end,
}
