local M = {}

function M.setup()
  local ok, copilot = pcall(require, "copilot")
  if not ok then
    vim.notify("copilot.lua not installed", vim.log.levels.WARN)
    return
  end

  copilot.setup({
    panel = { enabled = false },
    suggestion = {
      enabled = true,
      auto_trigger = true,
      keymap = {
        accept = "<C-l>",
        accept_word = false,
        accept_line = false,
        next = "<C-j>",
        prev = "<C-k>",
      },
    },
  })

  -- Try to add copilot source to nvim-cmp if present
  pcall(function()
    local cmp = require "cmp"
    local cfg = cmp.get_config()
    local sources = cfg.sources or {}
    local has = false
    for _, s in ipairs(sources) do
      if s.name == "copilot" then
        has = true
        break
      end
    end
    if not has then
      cmp.setup({
        sources = vim.list_extend({ { name = "copilot" } }, sources),
      })
    end
  end)
end

return M
