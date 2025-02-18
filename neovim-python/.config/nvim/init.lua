-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.clipboard = {
  name = "WslClipboard",
  copy = {
    ["+"] = "clip.exe",
    ["*"] = "clip.exe",
  },
  paste = {
    ["+"] = 'powershell.exe -Command [Console]::Out.Write($(Get-Clipboard -Raw).tostring():gsub("`r", ""))',
    ["*"] = 'powershell.exe -Command [Console]::Out.Write($(Get-Clipboard -Raw).tostring():gsub("`r", ""))',
  },
  cache_enabled = 0,
}
