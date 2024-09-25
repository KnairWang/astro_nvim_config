-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

-- https://github.com/AstroNvim/AstroCommunity

---@type LazySpec
local community_imports = {
  "AstroNvim/astrocommunity",
  -- { import = "astrocommunity.recipes.vscode" },
  { import = "astrocommunity.motion.nvim-surround" },
  -- { import = "astrocommunity.pack.cs" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.xml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.recipes.vscode-icons" },
  -- import/override with your plugins folder
}

if vim.fn.executable("go") == 1 then
  table.insert(community_imports, { import = "astrocommunity.pack.go" })
end

if vim.fn.executable("gleam") == 1 then
  table.insert(community_imports, { import = "astrocommunity.pack.gleam" })
end

if vim.fn.executable("python") == 1 or vim.fn.executable("python3") == 1 then
  table.insert(community_imports, { import = "astrocommunity.pack.python" })
end

if vim.fn.executable("rustup") == 1 and vim.fn.executable("cargo") then
  table.insert(community_imports, { import = "astrocommunity.pack.rust" })
end

if vim.fn.executable("node") == 1 then
  table.insert(community_imports, { import = "astrocommunity.pack.typescript" })
end

if vim.fn.executable("lua") == 1 then
  table.insert(community_imports, { import = "astrocommunity.pack.lua" })
end
-- if vim.fn.executable("elixir") == 1 and vim.fn.executable("iex") == 1 then
--   table.insert(community_imports, { import = "astrocommunity.pack.elixir-phoenix" })
-- end

return community_imports