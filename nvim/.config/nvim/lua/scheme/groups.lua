---@alias SchemeHighlightTable table<string, vim.api.keyset.highlight>
---@alias SchemeHighlightBuilder fun(palette: SchemePalette): SchemeHighlightTable

---Local namespace of builders for highlight groups.
local G = {}

---Core highlight groups for the colorscheme.
---@param palette SchemePalette
---@return SchemeHighlightTable
function G.core(palette)
  return {
    Normal = { fg = palette.primary.fg, bg = palette.primary.bg },
    NormalFloat = { fg = palette.primary.fg, bg = palette.primary.bg },
    Comment = { fg = palette.ui.comment, italic = true },
    Constant = { fg = palette.normal.yellow },
    String = { fg = palette.normal.yellow },
    Character = { fg = palette.normal.green },
    Number = { fg = palette.normal.orange },
    Boolean = { fg = palette.normal.cyan },
    Float = { fg = palette.normal.orange },
    FloatBorder = { fg = palette.normal.white },
    Operator = { fg = palette.normal.purple },
    Keyword = { fg = palette.normal.cyan },
    Keywords = { fg = palette.normal.cyan },
    Identifier = { fg = palette.normal.cyan },
    Function = { fg = palette.normal.yellow },
    Statement = { fg = palette.normal.purple },
    Conditional = { fg = palette.normal.pink },
    Repeat = { fg = palette.normal.pink },
    Label = { fg = palette.normal.cyan },
    Exception = { fg = palette.normal.purple },
    PreProc = { fg = palette.normal.yellow },
    Include = { fg = palette.normal.purple },
    Define = { fg = palette.normal.purple },
    Title = { fg = palette.normal.cyan },
    Macro = { fg = palette.normal.purple },
    PreCondit = { fg = palette.normal.cyan },
    Type = { fg = palette.normal.cyan },
    StorageClass = { fg = palette.normal.pink },
    Structure = { fg = palette.normal.yellow },
    TypeDef = { fg = palette.normal.yellow },
    Special = { fg = palette.normal.green, italic = true },
    SpecialComment = { fg = palette.ui.comment, italic = true },
    Error = { fg = palette.bright.red },
    Todo = { fg = palette.normal.purple, bold = true, italic = true },
    Underlined = { fg = palette.normal.cyan, underline = true },
    Cursor = { reverse = true },
    CursorLineNr = { fg = palette.primary.fg, bold = true },
    SignColumn = { bg = palette.primary.bg },
    Conceal = { fg = palette.ui.comment },
    CursorColumn = { bg = palette.normal.black },
    CursorLine = { bg = palette.ui.selection },
    ColorColumn = { bg = palette.ui.selection },
    StatusLine = { fg = palette.normal.white, bg = palette.ui.selection },
    StatusLineNC = { fg = palette.ui.comment },
    StatusLineTerm = { fg = palette.normal.white, bg = palette.normal.black },
    StatusLineTermNC = { fg = palette.ui.comment },
    Directory = { fg = palette.normal.cyan },
    DiffAdd = { fg = palette.primary.bg, bg = palette.normal.green },
    DiffChange = { fg = palette.normal.orange },
    DiffDelete = { fg = palette.normal.red },
    DiffText = { fg = palette.ui.comment },
    ErrorMsg = { fg = palette.bright.red },
    VertSplit = { fg = palette.normal.black },
    WinSeparator = { fg = palette.normal.black },
    Folded = { fg = palette.ui.comment },
    FoldColumn = {},
    Search = { fg = palette.normal.black, bg = palette.normal.orange },
    IncSearch = { fg = palette.normal.orange, bg = palette.ui.comment },
    LineNr = { fg = palette.ui.comment },
    MatchParen = { bg = palette.ui.visual },
    NonText = { fg = palette.ui.nontext },
    Pmenu = { fg = palette.normal.white, bg = palette.ui.menu },
    PmenuSel = { fg = palette.normal.white, bg = palette.ui.selection },
    PmenuSbar = { bg = palette.primary.bg },
    PmenuThumb = { bg = palette.ui.selection },
    Question = { fg = palette.normal.purple },
    QuickFixLine = { fg = palette.normal.black, bg = palette.normal.yellow },
    SpecialKey = { fg = palette.ui.nontext },
    SpellBad = { fg = palette.bright.red, underline = true },
    SpellCap = { fg = palette.normal.yellow },
    SpellLocal = { fg = palette.normal.yellow },
    SpellRare = { fg = palette.normal.yellow },
    TabLine = { fg = palette.ui.comment },
    TabLineSel = { fg = palette.normal.white },
    TabLineFill = { bg = palette.primary.bg },
    Terminal = { fg = palette.normal.white, bg = palette.normal.black },
    Visual = { bg = palette.ui.visual },
    VisualNOS = { fg = palette.ui.visual },
    WarningMsg = { fg = palette.normal.yellow },
    WildMenu = { fg = palette.normal.black, bg = palette.normal.white },
    EndOfBuffer = { fg = palette.primary.bg },
  }
end

---Tree-sitter capture groups for the colorscheme.
---@param palette SchemePalette
---@return SchemeHighlightTable
function G.treesitter(palette)
  return {
    ["@error"] = { fg = palette.bright.red },
    ["@punctuation.delimiter"] = { fg = palette.primary.fg },
    ["@punctuation.bracket"] = { fg = palette.primary.fg },
    ["@markup.list"] = { fg = palette.normal.cyan },
    ["@constant"] = { fg = palette.normal.purple },
    ["@constant.builtin"] = { fg = palette.normal.purple },
    ["@markup.link.label.symbol"] = { fg = palette.normal.purple },
    ["@constant.macro"] = { fg = palette.normal.cyan },
    ["@string.regexp"] = { fg = palette.normal.red },
    ["@string"] = { fg = palette.normal.yellow },
    ["@string.escape"] = { fg = palette.normal.cyan },
    ["@string.special.symbol"] = { fg = palette.normal.purple },
    ["@character"] = { fg = palette.normal.green },
    ["@number"] = { fg = palette.normal.purple },
    ["@boolean"] = { fg = palette.normal.purple },
    ["@number.float"] = { fg = palette.normal.green },
    ["@annotation"] = { fg = palette.normal.yellow },
    ["@attribute"] = { fg = palette.normal.cyan },
    ["@module"] = { fg = palette.normal.orange },
    ["@function.builtin"] = { fg = palette.normal.cyan },
    ["@function"] = { fg = palette.normal.green },
    ["@function.macro"] = { fg = palette.normal.green },
    ["@variable.parameter"] = { fg = palette.normal.orange },
    ["@variable.parameter.reference"] = { fg = palette.normal.orange },
    ["@function.method"] = { fg = palette.normal.green },
    ["@variable.member"] = { fg = palette.normal.orange },
    ["@property"] = { fg = palette.normal.purple },
    ["@constructor"] = { fg = palette.normal.cyan },
    ["@keyword.conditional"] = { fg = palette.normal.pink },
    ["@keyword.repeat"] = { fg = palette.normal.pink },
    ["@label"] = { fg = palette.normal.cyan },
    ["@keyword"] = { fg = palette.normal.pink },
    ["@keyword.function"] = { fg = palette.normal.cyan },
    ["@keyword.function.ruby"] = { fg = palette.normal.pink },
    ["@keyword.operator"] = { fg = palette.normal.pink },
    ["@operator"] = { fg = palette.normal.pink },
    ["@keyword.exception"] = { fg = palette.normal.purple },
    ["@type"] = { fg = palette.bright.cyan },
    ["@type.builtin"] = { fg = palette.normal.cyan, italic = true },
    ["@type.qualifier"] = { fg = palette.normal.pink },
    ["@structure"] = { fg = palette.normal.purple },
    ["@keyword.include"] = { fg = palette.normal.pink },
    ["@variable"] = { fg = palette.primary.fg },
    ["@variable.builtin"] = { fg = palette.normal.purple },
    ["@markup"] = { fg = palette.normal.orange },
    ["@markup.strong"] = { fg = palette.normal.orange, bold = true },
    ["@markup.emphasis"] = { fg = palette.normal.yellow, italic = true },
    ["@markup.underline"] = { fg = palette.normal.orange },
    ["@markup.heading"] = { fg = palette.normal.pink, bold = true },
    ["@markup.raw"] = { fg = palette.normal.yellow },
    ["@markup.link.url"] = { fg = palette.normal.yellow, italic = true },
    ["@markup.link"] = { fg = palette.normal.orange, bold = true },
    ["@tag"] = { fg = palette.normal.cyan },
    ["@tag.attribute"] = { fg = palette.normal.green },
    ["@tag.delimiter"] = { fg = palette.normal.cyan },
  }
end

---Semantic capture groups shared by syntax highlighters.
---@param palette SchemePalette
---@return SchemeHighlightTable
function G.semantic(palette)
  return {
    ["@class"] = { fg = palette.normal.cyan },
    ["@struct"] = { fg = palette.normal.cyan },
    ["@enum"] = { fg = palette.normal.cyan },
    ["@enumMember"] = { fg = palette.normal.purple },
    ["@event"] = { fg = palette.normal.cyan },
    ["@interface"] = { fg = palette.normal.cyan },
    ["@modifier"] = { fg = palette.normal.cyan },
    ["@regexp"] = { fg = palette.normal.yellow },
    ["@typeParameter"] = { fg = palette.normal.cyan },
    ["@decorator"] = { fg = palette.normal.cyan },
  }
end

---Semantic token groups for the built-in LSP client.
---@param palette SchemePalette
---@return SchemeHighlightTable
function G.semantic_tokens(palette)
  return {
    ["@lsp.type.class"] = { fg = palette.normal.cyan },
    ["@lsp.type.enum"] = { fg = palette.normal.cyan },
    ["@lsp.type.decorator"] = { fg = palette.normal.green },
    ["@lsp.type.enumMember"] = { fg = palette.normal.purple },
    ["@lsp.type.function"] = { fg = palette.normal.green },
    ["@lsp.type.interface"] = { fg = palette.normal.cyan },
    ["@lsp.type.macro"] = { fg = palette.normal.cyan },
    ["@lsp.type.method"] = { fg = palette.normal.green },
    ["@lsp.type.namespace"] = { fg = palette.normal.orange },
    ["@lsp.type.parameter"] = { fg = palette.normal.orange },
    ["@lsp.type.property"] = { fg = palette.normal.purple },
    ["@lsp.type.struct"] = { fg = palette.normal.cyan },
    ["@lsp.type.type"] = { fg = palette.bright.cyan },
    ["@lsp.type.variable"] = { fg = palette.primary.fg },
  }
end

---Diagnostic UI groups.
---@param palette SchemePalette
---@return SchemeHighlightTable
function G.diagnostics(palette)
  return {
    DiagnosticError = { fg = palette.normal.red },
    DiagnosticWarn = { fg = palette.normal.yellow },
    DiagnosticInfo = { fg = palette.normal.cyan },
    DiagnosticHint = { fg = palette.normal.cyan },
    DiagnosticUnderlineError = { undercurl = true, sp = palette.normal.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = palette.normal.yellow },
    DiagnosticUnderlineInfo = { undercurl = true, sp = palette.normal.cyan },
    DiagnosticUnderlineHint = { undercurl = true, sp = palette.normal.cyan },
    DiagnosticSignError = { fg = palette.normal.red },
    DiagnosticSignWarn = { fg = palette.normal.yellow },
    DiagnosticSignInfo = { fg = palette.normal.cyan },
    DiagnosticSignHint = { fg = palette.normal.cyan },
    DiagnosticFloatingError = { fg = palette.normal.red },
    DiagnosticFloatingWarn = { fg = palette.normal.yellow },
    DiagnosticFloatingInfo = { fg = palette.normal.cyan },
    DiagnosticFloatingHint = { fg = palette.normal.cyan },
    DiagnosticVirtualTextError = { fg = palette.normal.red },
    DiagnosticVirtualTextWarn = { fg = palette.normal.yellow },
    DiagnosticVirtualTextInfo = { fg = palette.normal.cyan },
    DiagnosticVirtualTextHint = { fg = palette.normal.cyan },
  }
end

---Legacy built-in LSP UI groups.
---@param palette SchemePalette
---@return SchemeHighlightTable
function G.lsp_legacy(palette)
  return {
    LspDiagnosticsDefaultError = { fg = palette.normal.red },
    LspDiagnosticsDefaultWarning = { fg = palette.normal.yellow },
    LspDiagnosticsDefaultInformation = { fg = palette.normal.cyan },
    LspDiagnosticsDefaultHint = { fg = palette.normal.cyan },
    LspDiagnosticsUnderlineError = { fg = palette.normal.red, undercurl = true },
    LspDiagnosticsUnderlineWarning = { fg = palette.normal.yellow, undercurl = true },
    LspDiagnosticsUnderlineInformation = { fg = palette.normal.cyan, undercurl = true },
    LspDiagnosticsUnderlineHint = { fg = palette.normal.cyan, undercurl = true },
    LspReferenceText = { fg = palette.normal.orange },
    LspReferenceRead = { fg = palette.normal.orange },
    LspReferenceWrite = { fg = palette.normal.orange },
    LspCodeLens = { fg = palette.normal.cyan },
    LspInlayHint = { fg = "#969696", bg = "#2F3146" },
  }
end

---Telescope plugin highlight groups.
---@param palette SchemePalette
---@return SchemeHighlightTable
function G.telescope(palette)
  return {
    TelescopePromptBorder = { fg = palette.ui.comment },
    TelescopeResultsBorder = { fg = palette.ui.comment },
    TelescopePreviewBorder = { fg = palette.ui.comment },
    TelescopeSelection = { fg = palette.normal.white, bg = palette.ui.selection },
    TelescopeMultiSelection = { fg = palette.normal.purple, bg = palette.ui.selection },
    TelescopeNormal = { fg = palette.primary.fg, bg = palette.primary.bg },
    TelescopeMatching = { fg = palette.normal.green },
    TelescopePromptPrefix = { fg = palette.normal.purple },
    TelescopeResultsDiffDelete = { fg = palette.normal.red },
    TelescopeResultsDiffChange = { fg = palette.normal.cyan },
    TelescopeResultsDiffAdd = { fg = palette.normal.green },
  }
end

---Highlight groups for the nvim-cmp plugin.
---@param palette SchemePalette
---@return SchemeHighlightTable
function G.cmp(palette)
  return {
    CmpItemAbbr = { fg = palette.normal.white },
    CmpItemAbbrDeprecated = { fg = palette.normal.white },
    CmpItemAbbrMatch = { fg = palette.normal.cyan },
    CmpItemAbbrMatchFuzzy = { fg = palette.normal.cyan },
    CmpItemMenu = { fg = palette.ui.comment, bg = palette.primary.bg },
    CmpItemKind = { fg = palette.normal.white },
    CmpItemKindMethod = { link = "@function.method" },
    CmpItemKindText = { link = "@markup" },
    CmpItemKindFunction = { link = "@function" },
    CmpItemKindConstructor = { link = "@type" },
    CmpItemKindVariable = { link = "@variable" },
    CmpItemKindClass = { link = "@type" },
    CmpItemKindInterface = { link = "@type" },
    CmpItemKindModule = { link = "@module" },
    CmpItemKindProperty = { link = "@property" },
    CmpItemKindOperator = { link = "@operator" },
    CmpItemKindReference = { link = "@variable.parameter.reference" },
    CmpItemKindUnit = { link = "@variable.member" },
    CmpItemKindValue = { link = "@variable.member" },
    CmpItemKindField = { link = "@variable.member" },
    CmpItemKindEnum = { link = "@variable.member" },
    CmpItemKindKeyword = { link = "@keyword" },
    CmpItemKindSnippet = { link = "@markup" },
    CmpItemKindColor = { link = "@property" },
    CmpItemKindFile = { link = "Normal" },
    CmpItemKindFolder = { link = "Directory" },
    CmpItemKindEvent = { link = "@constant" },
    CmpItemKindEnumMember = { link = "@variable.member" },
    CmpItemKindConstant = { link = "@constant" },
    CmpItemKindStruct = { link = "@structure" },
    CmpItemKindTypeParameter = { link = "@variable.parameter" },
  }
end

---Rainbow-Delimiters plugin highlight groups.
---@param palette SchemePalette
---@return SchemeHighlightTable
function G.rainbow_delimiters(palette)
  return {
    RainbowDelimiterRed = { fg = palette.normal.red },
    RainbowDelimiterYellow = { fg = palette.normal.orange },
    RainbowDelimiterBlue = { fg = palette.normal.pink },
    RainbowDelimiterOrange = { fg = palette.normal.cyan },
    RainbowDelimiterGreen = { fg = palette.normal.yellow },
    RainbowDelimiterViolet = { fg = palette.normal.purple },
    RainbowDelimiterCyan = { fg = palette.normal.green },
  }
end

---@type SchemeHighlightBuilder[]
local builders = {
  G.core,
  G.semantic,
  G.semantic_tokens,
  G.diagnostics,
  G.lsp_legacy,
  G.treesitter,
  G.telescope,
  G.cmp,
  G.rainbow_delimiters,
}

---Apply terminal colors from the fixed scheme palette.
---@param palette SchemePalette
local function setup_terminal(palette)
  vim.g.terminal_color_background = palette.primary.bg
  vim.g.terminal_color_foreground = palette.primary.fg
  vim.g.terminal_color_0 = palette.normal.black
  vim.g.terminal_color_1 = palette.normal.red
  vim.g.terminal_color_2 = palette.normal.green
  vim.g.terminal_color_3 = palette.normal.yellow
  vim.g.terminal_color_4 = palette.normal.purple
  vim.g.terminal_color_5 = palette.normal.pink
  vim.g.terminal_color_6 = palette.normal.cyan
  vim.g.terminal_color_7 = palette.normal.white
  vim.g.terminal_color_8 = palette.bright.black
  vim.g.terminal_color_9 = palette.bright.red
  vim.g.terminal_color_10 = palette.bright.green
  vim.g.terminal_color_11 = palette.bright.yellow
  vim.g.terminal_color_12 = palette.bright.blue
  vim.g.terminal_color_13 = palette.bright.magenta
  vim.g.terminal_color_14 = palette.bright.cyan
  vim.g.terminal_color_15 = palette.bright.white
end

---@class SchemeConfig
---@field setup fun(palette: SchemePalette)
local M = {}

---Apply all colorscheme-owned highlight layers.
---@param palette SchemePalette
function M.setup(palette)
  setup_terminal(palette)
  for _, builder in ipairs(builders) do
    local groups = builder(palette)
    for group, highlight in pairs(groups) do
      vim.api.nvim_set_hl(0, group, highlight)
    end
  end
end

return M
