-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "obsidian-ember",
  transparency = true,
  hl_override = {

    IblIndent = { fg = "#FFBF00" },
    IblScope = { fg = "#FFBF00" },
    -- Abu-abu hangat kecokelatan (Muted Amber Earth) agar senada dengan skema Amber
    Comment = { fg = "#887A6B", italic = true, bold = true },
    ["@comment"] = { fg = "#887A6B", italic = true, bold = true },

    -- BONUS: Mengoptimalkan elemen UI transparan agar cocok dengan Amber accent
    LineNr = { fg = "#5C5247", bg = "NONE" }, -- Nomor baris redup transparan
    CursorLineNr = { fg = "#FFBF00", bg = "NONE" }, -- Nomor baris aktif berwarna Amber cerah
    SignColumn = { bg = "NONE" },

    -- Membuat floating window bersih dan transparan
    NormalFloat = { bg = "NONE" },
    FloatBorder = { fg = "#FFBF00", bg = "NONE" }, -- Bingkai float menggunakan aksen Amber
  },

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.nvdash = {
  load_on_startup = true,
  header = {
    "",
    "          (  )   (   )  )",
    "           ) (   )  (  (",
    "           ( )  (    ) )",
    "              _____________       ",
    "             <_____________> ___  ",
    "             |             |/ _ \\ ",
    "             |  C O F F E E| / \\ |",
    "             |     &&      | \\_/ |",
    "             |   C O D E   |\\___/ ",
    "             \\             /      ",
    "              `-----------'       ",
    "           [ DEV // SLEEP=0 ]     ",
    "",
  },
}

M.ui = {
  tabufline = {
    lazyload = false,
  },

  statusline = {
    theme = "minimal",
    separator_style = "block",
  },

  cmp = {
    style = "atom",
  },

  tablist = {
    enabled = true,
    style = "slanted",
  },
}

return M
