-- if true then return {} end

return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  opts = {
    ignored_next_char = "[%w%.%(%{%[]",
    fast_wrap = {
      chars = { "{", "[", "(", '"', "'", "`" },
    },
  },
  config = function(plugin, opts)
    require "astronvim.plugins.configs.nvim-autopairs" (plugin, opts)

    local npairs = require "nvim-autopairs"
    local Rule = require "nvim-autopairs.rule"
    local cond = require "nvim-autopairs.conds"

    npairs.add_rules {
      Rule("<", ">", "rust")
          :with_pair(cond.before_text("::"))
          :with_pair(cond.not_after_regex("%w"))
          :with_move(cond.after_text(">"))
          :with_cr(cond.none()),
    }
    npairs.add_rules {
      Rule("<", ">", "rust")
          :with_pair(cond.before_regex("%w"))
          :with_pair(cond.not_after_regex("%w"))
          :with_move(cond.after_text(">"))
          :with_cr(cond.none()),
    }

    -- npairs.add_rules {
    --   Rule("<", ">", "rust")
    --       :with_pair(cond.before_text("<"))
    --       :with_pair(cond.after_text(">"))
    --       :with_pair(cond.not_after_regex("%w"))
    --       :with_move(cond.after_text(">"))
    --       :with_cr(cond.none()),
    -- }
  end,
}
