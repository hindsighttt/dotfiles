local function current_dir()
  local bufname = vim.api.nvim_buf_get_name(0)

  if bufname == "" then
    return vim.fn.getcwd()
  end

  if vim.fn.isdirectory(bufname) == 1 then
    return bufname
  end

  return vim.fn.fnamemodify(bufname, ":p:h")
end

return {
  {
    "stevearc/oil.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup {
        default_file_explorer = true,
        view_options = {
          show_hidden = true,
        },
      }

      vim.api.nvim_create_user_command("Navigate", function()
        require("oil").open(current_dir())
      end, {
        desc = "Open the current directory in a full-frame file browser",
      })

      -- Neovim user commands must start uppercase, so alias the typed lowercase form.
      vim.cmd [[cnoreabbrev navigate Navigate]]
    end,
  },
}
