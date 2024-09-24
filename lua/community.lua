-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

-- https://github.com/AstroNvim/AstroCommunity

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- { import = "astrocommunity.recipes.vscode" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.pack.cs" },
  -- { import = "astrocommunity.pack.elixir-phoenix" },
  { import = "astrocommunity.pack.gleam" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.xml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.recipes.vscode-icons" },
  -- import/override with your plugins folder
}
