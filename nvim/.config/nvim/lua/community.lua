-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.typescript" },
  -- import/override with your plugins folder
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },
  -- 移动插件
  { import = "astrocommunity.motion.flash-nvim" },
  -- 通知
  { import = "astrocommunity.utility.noice-nvim" },
  -- cpm
  { import = "astrocommunity.completion.cmp-cmdline" },
  -- TabNine
  { import = "astrocommunity.completion.tabnine-nvim" },
  -- colorscheme
  { import = "astrocommunity.colorscheme.catppuccin" },
}
