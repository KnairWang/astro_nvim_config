if true then return {} end

--
-- The > key mapping is conflict with ts-autotag
-- thus disable this customization

-- return {
--   "windwp/nvim-autopairs",
--   -- event = "InsertEnter",
--   -- enabled = true,
--   -- opts = {
--   --   enabled = true,
--   --   -- ignored_next_char = "[%w%.%(%{%[<]",
--   --   fast_wrap = {
--   --     chars = { "{", "[", "(", '"', "'", "`" },
--   --   },
--   -- },
--   config = function(plugin, opts)
--     require "astronvim.plugins.configs.nvim-autopairs" (plugin, opts)

--     local npairs = require 'nvim-autopairs'
--     local Rule = require 'nvim-autopairs.rule'
--     local cond = require 'nvim-autopairs.conds'

--     local start_char = '<'
--     local end_char = '>'
--     npairs.add_rules({
--       -- Rule(start_char, end_char, "rust")
--       --     :with_pair(cond.none())
--       --     :with_move(function(op) return op.char == end_char end)
--       --     :use_key(end_char)
--       --     :with_del(cond.none()),

--       -- Rule(start_char, end_char, "rust")
--       --     :with_pair(cond.before_text("::"), 2)
--       --     :with_move(function(op) return op.char == end_char end)
--       --     :with_del(cond.done()),

--       Rule(start_char, end_char, "rust")
--           :with_pair(cond.before_regex("%w"), 1)
--           :with_move(function(op)
--             return op.char == end_char
--           end)
--           :with_del(cond.done()),
--           -- .use_key(end_char)
--     })
--   end,
-- }
