local state_key = "compile_mode_command"

local function prompt_for_command(default)
  local input = vim.fn.input({
    prompt = "Compile command: ",
    default = default or "",
    completion = "shellcmd",
  })

  input = vim.trim(input)
  if input == "" then
    return nil
  end

  return input
end

local function resolve_command(opts)
  if opts.args ~= "" then
    return vim.trim(opts.args)
  end

  if opts.bang then
    vim.g[state_key] = nil
  end

  local command = vim.g[state_key]
  if type(command) == "string" and command ~= "" then
    return command
  end

  command = prompt_for_command(nil)
  if command then
    vim.g[state_key] = command
  end

  return command
end

local function run_compile(command)
  vim.o.makeprg = command

  local ok = pcall(vim.cmd, "make")
  vim.cmd.cwindow()

  if not ok then
    return
  end
end

vim.api.nvim_create_user_command("Compile", function(opts)
  local command = resolve_command(opts)
  if not command then
    return
  end

  run_compile(command)
end, {
  bang = true,
  nargs = "*",
  complete = "shellcmd",
  desc = "Run a compile command and open quickfix",
})

-- Neovim user commands must start uppercase, so alias the typed lowercase form.
vim.cmd [[cnoreabbrev compile Compile]]
