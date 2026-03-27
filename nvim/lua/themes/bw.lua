local M = {}

M.base_30 = {
  white = "#f5f5f5",
  darker_black = "#050505",
  black = "#0a0a0a",
  black2 = "#111111",
  one_bg = "#161616",
  one_bg2 = "#1d1d1d",
  one_bg3 = "#262626",
  grey = "#4a4a4a",
  grey_fg = "#666666",
  grey_fg2 = "#7a7a7a",
  light_grey = "#9a9a9a",
  red = "#cfcfcf",
  baby_pink = "#d9d9d9",
  pink = "#e0e0e0",
  line = "#202020",
  green = "#d4d4d4",
  vibrant_green = "#ebebeb",
  blue = "#c8c8c8",
  nord_blue = "#d8d8d8",
  yellow = "#e6e6e6",
  sun = "#f0f0f0",
  purple = "#cdcdcd",
  dark_purple = "#b8b8b8",
  teal = "#c2c2c2",
  orange = "#dadada",
  cyan = "#ededed",
  statusline_bg = "#111111",
  lightbg = "#1b1b1b",
  pmenu_bg = "#d8d8d8",
  folder_bg = "#c8c8c8",
}

M.base_16 = {
  base00 = "#0a0a0a",
  base01 = "#121212",
  base02 = "#1a1a1a",
  base03 = "#2b2b2b",
  base04 = "#5c5c5c",
  base05 = "#d0d0d0",
  base06 = "#e4e4e4",
  base07 = "#f5f5f5",
  base08 = "#f0f0f0",
  base09 = "#d9d9d9",
  base0A = "#e6e6e6",
  base0B = "#cccccc",
  base0C = "#bdbdbd",
  base0D = "#f5f5f5",
  base0E = "#dadada",
  base0F = "#a6a6a6",
}

M.polish_hl = {
  defaults = {
    Comment = { fg = "#7f7f7f", italic = true },
    CursorLineNr = { fg = "#ffffff", bold = true },
    Visual = { bg = "#2a2a2a" },
    Search = { fg = "#0a0a0a", bg = "#f0f0f0" },
    IncSearch = { fg = "#0a0a0a", bg = "#ffffff", bold = true },
  },
  treesitter = {
    ["@comment"] = { fg = "#7f7f7f", italic = true },
    ["@keyword"] = { fg = "#e6e6e6", bold = true },
    ["@string"] = { fg = "#cfcfcf" },
    ["@function"] = { fg = "#f5f5f5" },
    ["@type"] = { fg = "#dcdcdc" },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "bw")

return M
