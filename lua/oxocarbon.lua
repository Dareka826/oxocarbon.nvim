--                               O X O C A R B O N
--        _..._         _..._         _..._         _..._         _..._
--      .:::::::.     .::::. `.     .::::  `.     .::'   `.     .'     `.
--     :::::::::::   :::::::.  :   ::::::    :   :::       :   :         :
--     :::::::::::   ::::::::  :   ::::::    :   :::       :   :         :
--     `:::::::::'   `::::::' .'   `:::::   .'   `::.     .'   `.       .'
--       `':::''       `'::'-'       `'::.-'       `':..-'       `-...-'
--
--   Colorscheme name:    oxocarbon
--   Description:         Neovim Colorschemes based on base16
--   Author:              https://github.com/shaunsingh

--[[ reset variables ]]
if vim.g.colors_name then
  vim.cmd.hi("clear")
end

--[[ set defaults ]]
vim.g["colors_name"] = "oxocarbon"
vim.o["termguicolors"] = true

--[[ oxocarbon palette ]]
local oxocarbon = {
  none = "NONE",
}

if vim.o.background == "dark" then
  oxocarbon.base00 = "#161616"
  oxocarbon.base01 = "#262626"
  oxocarbon.base02 = "#393939"
  oxocarbon.base03 = "#525252"
  oxocarbon.base04 = "#d0d0d0"
  oxocarbon.base05 = "#f2f2f2"
  oxocarbon.base06 = "#ffffff"
  oxocarbon.base07 = "#08bdba"
  oxocarbon.base08 = "#3ddbd9"
  oxocarbon.base09 = "#78a9ff"
  oxocarbon.base10 = "#ee5396"
  oxocarbon.base11 = "#33b1ff"
  oxocarbon.base12 = "#ff7eb6"
  oxocarbon.base13 = "#42be65"
  oxocarbon.base14 = "#be95ff"
  oxocarbon.base15 = "#82cfff"
  oxocarbon.blend  = "#131313"
else
  oxocarbon.base00 = "#ffffff"
  oxocarbon.base01 = "#f2f2f2"
  oxocarbon.base02 = "#d0d0d0"
  oxocarbon.base03 = "#161616"
  oxocarbon.base04 = "#37474F"
  oxocarbon.base05 = "#90A4AE"
  oxocarbon.base06 = "#525252"
  oxocarbon.base07 = "#08bdba"
  oxocarbon.base08 = "#ff7eb6"
  oxocarbon.base09 = "#ee5396"
  oxocarbon.base10 = "#FF6F00"
  oxocarbon.base11 = "#0f62fe"
  oxocarbon.base12 = "#673AB7"
  oxocarbon.base13 = "#42be65"
  oxocarbon.base14 = "#be95ff"
  oxocarbon.base15 = "#FFAB91"
  oxocarbon.blend  = "#FAFAFA"
end

-- Extra colors
oxocarbon.diff_add    = "#122f2f"
oxocarbon.diff_change = "#222a39"
oxocarbon.diff_delete = "#361c28"
oxocarbon.diff_text   = "#2f3f5c"

--[[ utilities ]]
local function termcolor(index, color)
  vim.g["terminal_color_" .. tostring(index)] = color
end

local function hl(name, val)
  vim.api.nvim_set_hl(0, name, val)
end

--[[ terminal ]]
termcolor(0,  oxocarbon.base01)
termcolor(1,  oxocarbon.base11)
termcolor(2,  oxocarbon.base14)
termcolor(3,  oxocarbon.base13)
termcolor(4,  oxocarbon.base09)
termcolor(5,  oxocarbon.base15)
termcolor(6,  oxocarbon.base08)
termcolor(7,  oxocarbon.base05)
termcolor(8,  oxocarbon.base03)
termcolor(9,  oxocarbon.base11)
termcolor(10, oxocarbon.base14)
termcolor(11, oxocarbon.base13)
termcolor(12, oxocarbon.base09)
termcolor(13, oxocarbon.base15)
termcolor(14, oxocarbon.base07)
termcolor(15, oxocarbon.base06)

--[[ editor ]]
hl("ColorColumn",                            {fg = oxocarbon.none,   bg = oxocarbon.base01})
hl("Cursor",                                 {fg = oxocarbon.base00, bg = oxocarbon.base04})
hl("CursorLine",                             {fg = oxocarbon.none,   bg = oxocarbon.base01})
hl("CursorColumn",                           {fg = oxocarbon.none,   bg = oxocarbon.base01})
hl("CursorLineNr",                           {fg = oxocarbon.base04, bg = oxocarbon.none})
hl("QuickFixLine",                           {fg = oxocarbon.none,   bg = oxocarbon.base01})
hl("Error",                                  {fg = oxocarbon.base10, bg = oxocarbon.base01})
hl("LineNr",                                 {fg = oxocarbon.base03, bg = oxocarbon.base00})
hl("NonText",                                {fg = oxocarbon.base02, bg = oxocarbon.none})
hl("Normal",                                 {fg = oxocarbon.base04, bg = oxocarbon.base00})
hl("Pmenu",                                  {fg = oxocarbon.base04, bg = oxocarbon.base01})
hl("PmenuSbar",                              {fg = oxocarbon.base04, bg = oxocarbon.base01})
hl("PmenuSel",                               {fg = oxocarbon.base08, bg = oxocarbon.base02})
hl("PmenuThumb",                             {fg = oxocarbon.base08, bg = oxocarbon.base02})
hl("SpecialKey",                             {fg = oxocarbon.base03, bg = oxocarbon.none})
hl("Visual",                                 {fg = oxocarbon.none,   bg = oxocarbon.base02})
hl("VisualNOS",                              {fg = oxocarbon.none,   bg = oxocarbon.base02})
hl("TooLong",                                {fg = oxocarbon.none,   bg = oxocarbon.base02})
hl("Debug",                                  {fg = oxocarbon.base13, bg = oxocarbon.none})
hl("Macro",                                  {fg = oxocarbon.base07, bg = oxocarbon.none})
hl("MatchParen",                             {fg = oxocarbon.none,   bg = oxocarbon.base03})
hl("Bold",                                   {fg = oxocarbon.none,   bg = oxocarbon.none,   bold = true})
hl("Italic",                                 {fg = oxocarbon.none,   bg = oxocarbon.none,   italic = true})
hl("Underlined",                             {fg = oxocarbon.none,   bg = oxocarbon.none,   underline = true})

--[[ diagnostics ]]
hl("DiagnosticWarn",                         {fg = oxocarbon.base14, bg = oxocarbon.none})
hl("DiagnosticError",                        {fg = oxocarbon.base10, bg = oxocarbon.none})
hl("DiagnosticInfo",                         {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("DiagnosticHint",                         {fg = oxocarbon.base04, bg = oxocarbon.none})
hl("DiagnosticUnderlineWarn",                {fg = oxocarbon.base14, bg = oxocarbon.none, undercurl = true})
hl("DiagnosticUnderlineError",               {fg = oxocarbon.base10, bg = oxocarbon.none, undercurl = true})
hl("DiagnosticUnderlineInfo",                {fg = oxocarbon.base04, bg = oxocarbon.none, undercurl = true})
hl("DiagnosticUnderlineHint",                {fg = oxocarbon.base04, bg = oxocarbon.none, undercurl = true})

--[[ health ]]
hl("HealthError",                            {fg = oxocarbon.base10, bg = oxocarbon.none})
hl("HealthWarning",                          {fg = oxocarbon.base14, bg = oxocarbon.none})
hl("HealthSuccess",                          {fg = oxocarbon.base13, bg = oxocarbon.none})

--[[ ledger ]]
hl("@comment",                               {link = "Comment"})
hl("@text.literal.commodity",                {fg = oxocarbon.base13, bg = oxocarbon.none})
hl("@number",                                {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("@number.date",                           {fg = oxocarbon.base08, bg = oxocarbon.none})
hl("@number.date.effective",                 {fg = oxocarbon.base13, bg = oxocarbon.none})
hl("@number.interval",                       {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("@number.status",                         {fg = oxocarbon.base12, bg = oxocarbon.none})
hl("@number.quantity",                       {fg = oxocarbon.base11, bg = oxocarbon.none})
hl("@number.quantity.negative",              {fg = oxocarbon.base10, bg = oxocarbon.none})

--[[ lsp ]]
hl("LspCodeLens",                            {fg = oxocarbon.none,   bg = oxocarbon.base03})
hl("LspReferenceText",                       {fg = oxocarbon.none,   bg = oxocarbon.base03})
hl("LspReferenceread",                       {fg = oxocarbon.none,   bg = oxocarbon.base03})
hl("LspReferenceWrite",                      {fg = oxocarbon.none,   bg = oxocarbon.base03})
hl("LspSignatureActiveParameter",            {fg = oxocarbon.base08, bg = oxocarbon.none})

--[[ lsp-semantic-tokens ]]
hl("@lsp.type.class",                        {link = "Structure"})
hl("@lsp.type.decorator",                    {link = "Decorator"})
hl("@lsp.type.decorator.markdown",           {link = "Structure"})
hl("@lsp.type.function",                     {link = "@function"})
hl("@lsp.type.macro",                        {link = "Macro"})
hl("@lsp.type.method",                       {link = "@function"})
hl("@lsp.type.struct",                       {link = "Structure"})
hl("@lsp.type.type",                         {link = "Type"})
hl("@lsp.type.typeParameter",                {link = "Typedef"})
hl("@lsp.type.selfParameter",                {link = "@variable.builtin"})
hl("@lsp.type.builtinConstant",              {link = "@constant.builtin"})
hl("@lsp.type.magicFunction",                {link = "@function.builtin"})
hl("@lsp.type.boolean",                      {link = "@boolean"})
hl("@lsp.type.builtinType",                  {link = "@type.builtin"})
hl("@lsp.type.comment",                      {link = "@comment"})
hl("@lsp.type.enum",                         {link = "@type"})
hl("@lsp.type.enumMember",                   {link = "@constant"})
hl("@lsp.type.escapeSequence",               {link = "@string.escape"})
hl("@lsp.type.formatSpecifier",              {link = "@punctuation.special"})
--hl("@lsp.type.interface", {})
hl("@lsp.type.keyword",                      {link = "@keyword"})
hl("@lsp.type.namespace",                    {link = "@namespace"})
hl("@lsp.type.number",                       {link = "@number"})
hl("@lsp.type.operator",                     {link = "@operator"})
hl("@lsp.type.parameter",                    {link = "@parameter"})
hl("@lsp.type.property",                     {link = "@property"})
hl("@lsp.type.selfKeyword",                  {link = "@variable.builtin"})
hl("@lsp.type.string.rust",                  {link = "@string"})
hl("@lsp.type.typeAlias",                    {link = "@type.definition"})
hl("@lsp.type.unresolvedReference",          {link = "Error"})
hl("@lsp.type.variable",                     {link = "@variable"})
hl("@lsp.mod.readonly",                      {link = "@constant"})
hl("@lsp.mod.typeHint",                      {link = "Type"})
hl("@lsp.mod.builtin",                       {link = "Special"})
hl("@lsp.typemod.class.defaultLibrary",      {link = "@type.builtin"})
hl("@lsp.typemod.enum.defaultLibrary",       {link = "@type.builtin"})
hl("@lsp.typemod.enumMember.defaultLibrary", {link = "@constant.builtin"})
hl("@lsp.typemod.function.defaultLibrary",   {link = "@function.builtin"})
hl("@lsp.typemod.keyword.async",             {link = "@keyword.coroutine"})
hl("@lsp.typemod.macro.defaultLibrary",      {link = "@function.builtin"})
hl("@lsp.typemod.method.defaultLibrary",     {link = "@function.builtin"})
hl("@lsp.typemod.operator.injected",         {link = "@operator"})
hl("@lsp.typemod.string.injected",           {link = "@string"})
hl("@lsp.typemod.operator.controlFlow",      {link = "@exception"})
hl("@lsp.typemod.keyword.documentation",     {link = "Special"})
hl("@lsp.typemod.variable.global",           {link = "@constant"})
hl("@lsp.typemod.variable.static",           {link = "@constant"})
hl("@lsp.typemod.variable.defaultLibrary",   {link = "Special"})
hl("@lsp.typemod.function.builtin",          {link = "@function.builtin"})
hl("@lsp.typemod.function.readonly",         {link = "@method"})
--hl("@lsp.typemod.type.defaultLibrary", {})
hl("@lsp.typemod.variable.defaultLibrary",   {link = "@variable.builtin"})
hl("@lsp.typemod.variable.injected",         {link = "@variable"})

--[[ gutter ]]
hl("Folded",                                 {fg = oxocarbon.base02, bg = oxocarbon.base01})
hl("FoldColumn",                             {fg = oxocarbon.base01, bg = oxocarbon.base00})
hl("SignColumn",                             {fg = oxocarbon.base01, bg = oxocarbon.base00})

--[[ navigation ]]
hl("Directory",                              {fg = oxocarbon.base08, bg = oxocarbon.none})

--[[ prompts ]]
hl("EndOfBuffer",                            {fg = oxocarbon.base01, bg = oxocarbon.none})
hl("ErrorMsg",                               {fg = oxocarbon.base10, bg = oxocarbon.none})
hl("ModeMsg",                                {fg = oxocarbon.base04, bg = oxocarbon.none})
hl("MoreMsg",                                {fg = oxocarbon.base08, bg = oxocarbon.none})
hl("Question",                               {fg = oxocarbon.base04, bg = oxocarbon.none})
hl("Substitute",                             {fg = oxocarbon.base01, bg = oxocarbon.base08})
hl("WarningMsg",                             {fg = oxocarbon.base14, bg = oxocarbon.none})
hl("WildMenu",                               {fg = oxocarbon.base08, bg = oxocarbon.base01})

--[[ vimhelp ]]
hl("helpHyperTextJump",                      {fg = oxocarbon.base08, bg = oxocarbon.none})
hl("helpSpecial",                            {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("helpHeadline",                           {fg = oxocarbon.base10, bg = oxocarbon.none})
hl("helpHeader",                             {fg = oxocarbon.base15, bg = oxocarbon.none})

--[[ diff ]]
hl("DiffAdded",                              {fg = oxocarbon.base07, bg = oxocarbon.none})
hl("DiffChanged",                            {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("DiffRemoved",                            {fg = oxocarbon.base10, bg = oxocarbon.none})
hl("DiffAdd",                                {fg = oxocarbon.none,   bg = oxocarbon.diff_add})
hl("DiffChange",                             {fg = oxocarbon.none,   bg = oxocarbon.diff_change})
hl("DiffDelete",                             {fg = oxocarbon.none,   bg = oxocarbon.diff_delete})
hl("DiffText",                               {fg = oxocarbon.none,   bg = oxocarbon.diff_text})

--[[ search ]]
hl("IncSearch",                              {fg = oxocarbon.base06, bg = oxocarbon.base10})
hl("Search",                                 {fg = oxocarbon.base01, bg = oxocarbon.base08})

--[[ tabs ]]
hl("TabLine",                                {link = "StatusLineNC"})
hl("TabLineFill",                            {link = "TabLine"})
hl("TabLineSel",                             {link = "StatusLine"})

--[[ window ]]
hl("Title",                                  {fg = oxocarbon.base04, bg = oxocarbon.none})
-- VertSplit has been replaced by WinSpeperator in nvim 0.10
hl("VertSplit",                              {fg = oxocarbon.base01, bg = oxocarbon.base00})
hl("WinSeparator",                           {fg = oxocarbon.base01, bg = oxocarbon.base00})

--[[ regular syntax ]]
hl("Boolean",                                {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("Character",                              {fg = oxocarbon.base14, bg = oxocarbon.none})
hl("Comment",                                {fg = oxocarbon.base03, bg = oxocarbon.none})
hl("Conceal",                                {fg = oxocarbon.none,   bg = oxocarbon.none})
hl("Conditional",                            {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("Constant",                               {fg = oxocarbon.base04, bg = oxocarbon.none})
hl("Decorator",                              {fg = oxocarbon.base12, bg = oxocarbon.none})
hl("Define",                                 {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("Delimeter",                              {fg = oxocarbon.base06, bg = oxocarbon.none})
hl("Exception",                              {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("Float",                                  {link = "Number"})
hl("Function",                               {fg = oxocarbon.base08, bg = oxocarbon.none})
hl("Identifier",                             {fg = oxocarbon.base04, bg = oxocarbon.none})
hl("Include",                                {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("Keyword",                                {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("Label",                                  {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("Number",                                 {fg = oxocarbon.base15, bg = oxocarbon.none})
hl("Operator",                               {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("PreProc",                                {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("Repeat",                                 {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("Special",                                {fg = oxocarbon.base04, bg = oxocarbon.none})
hl("SpecialChar",                            {fg = oxocarbon.base04, bg = oxocarbon.none})
hl("SpecialComment",                         {fg = oxocarbon.base08, bg = oxocarbon.none})
hl("Statement",                              {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("StorageClass",                           {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("String",                                 {fg = oxocarbon.base14, bg = oxocarbon.none})
hl("Structure",                              {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("Tag",                                    {fg = oxocarbon.base04, bg = oxocarbon.none})
hl("Todo",                                   {fg = oxocarbon.base13, bg = oxocarbon.none})
hl("Type",                                   {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("Typedef",                                {fg = oxocarbon.base09, bg = oxocarbon.none})

--[[ markdown ]]
hl("markdownBlockquote",                     {fg = oxocarbon.base08, bg = oxocarbon.none})
hl("markdownBold",                           {link = "Bold"})
hl("markdownItalic",                         {link = "Italic"})
hl("markdownBoldItalic",                     {fg = oxocarbon.none,   bg = oxocarbon.none, bold = true, italic = true})
hl("markdownRule",                           {link = "Comment"})
hl("markdownH1",                             {fg = oxocarbon.base10, bg = oxocarbon.none})
hl("markdownH2",                             {link = "markdownH1"})
hl("markdownH3",                             {link = "markdownH1"})
hl("markdownH4",                             {link = "markdownH1"})
hl("markdownH5",                             {link = "markdownH1"})
hl("markdownH6",                             {link = "markdownH1"})
hl("markdownHeadingDelimiter",               {link = "markdownH1"})
hl("markdownHeadingRule",                    {link = "markdownH1"})
hl("markdownUrl",                            {fg = oxocarbon.base14, bg = oxocarbon.none, underline = true})
hl("markdownCode",                           {link = "String"})
hl("markdownCodeBlock",                      {link = "markdownCode"})
hl("markdownCodeDelimiter",                  {link = "markdownCode"})
hl("markdownUrl",                            {link = "String"})
hl("markdownListMarker",                     {fg = oxocarbon.base08, bg = oxocarbon.none})
hl("markdownOrderedListMarker",              {fg = oxocarbon.base08, bg = oxocarbon.none})
hl("@markup",                                {link = "@none"})
hl("@markup.environment",                    {link = "Macro"})
hl("@markup.environment.name",               {link = "Type"})
hl("@markup.emphasis",                       {italic = true})
hl("@markup.italic",                         {italic = true})
hl("@markup.strikethrough",                  {strikethrough = true})
hl("@markup.strong",                         {bold = true})
hl("@markup.underline",                      {underline = true})
hl("@markup.heading",                        {link = "Title"})
hl("@markup.heading.marker",                 {link = "markdownHeadingDelimiter"})
hl("@markup.heading.1.markdown",             {link = "markdownH1"})
hl("@markup.heading.2.markdown",             {link = "markdownH1"})
hl("@markup.heading.3.markdown",             {link = "markdownH1"})
hl("@markup.heading.4.markdown",             {link = "markdownH1"})
hl("@markup.heading.5.markdown",             {link = "markdownH1"})
hl("@markup.heading.6.markdown",             {link = "markdownH1"})
hl("@markup.heading.7.markdown",             {link = "markdownH1"})
hl("@markup.heading.8.markdown",             {link = "markdownH1"})
hl("@markup.link",                           {link = "markdownUrl"})
hl("@markup.link.label",                     {underline = true})
hl("@markup.link.label.symbol",              {link = "markdownItalic"})
hl("@markup.link.label.markdown_inline",     {link = "markdownItalic"})
hl("@markup.link.title",                     {link = "Title"})
hl("@markup.link.url",                       {link = "markdownUrl"})
hl("@markup.link.destination",               {link = "markdownUrl"})
hl("@markup.link.description",               {fg = oxocarbon.blend, underline = true, italic = true})
hl("@markup.list",                           {link = "markdownListMarker"})
hl("@markup.list.bullet",                    {link = "markdownListMarker"})
hl("@markup.list.checked",                   {link = "markdownListMarker"})
hl("@markup.list.markdown",                  {link = "markdownListMarker"})
hl("@markup.list.ordered",                   {link = "markdownOrderedListMarker"})
hl("@markup.list.unchecked",                 {link = "markdownListMarker"})
hl("@markup.math",                           {link = "Special"})
hl("@markup.raw",                            {link = "String"})
hl("@markup.raw.markdown_inline",            {link = "String"})
hl("@markup.quote",                          {link = "markdownBlockquote"})
hl("@markup.literal",                        {link = "markdownCode"})
hl("@markup.code.block",                     {link = "markdownCodeBlock"})
hl("@markup.rule",                           {link = "Comment"})

--[[ asciidoc ]]
hl("asciidocAttributeEntry",                 {fg = oxocarbon.base15, bg = oxocarbon.none})
hl("asciidocAttributeList",                  {link = "asciidocAttributeEntry"})
hl("asciidocAttributeRef",                   {link = "asciidocAttributeEntry"})
hl("asciidocHLabel",                         {link = "markdownH1"})
hl("asciidocOneLineTitle",                   {link = "markdownH1"})
hl("asciidocQuotedMonospaced",               {link = "markdownBlockquote"})
hl("asciidocURL",                            {link = "markdownUrl"})

--[[ treesitter ]]
do
  --[[ misc ]]
  hl("@comment",                               {link = "Comment"})
  hl("@error",                                 {fg = oxocarbon.base11, bg = oxocarbon.none})
  --hl("@none", {})
  --hl("@preproc", {})
  --hl("@define", {})
  hl("@operator",                              {link = "Operator"})

  --[[ punctuation ]]
  hl("@punctuation.delimiter",                 {fg = oxocarbon.base08, bg = oxocarbon.none})
  hl("@punctuation.bracket",                   {fg = oxocarbon.base08, bg = oxocarbon.none})
  hl("@punctuation.special",                   {fg = oxocarbon.base08, bg = oxocarbon.none})

  --[[ literals ]]
  hl("@string",                                {link = "String"})
  hl("@string.regex",                          {fg = oxocarbon.base07, bg = oxocarbon.none})
  hl("@string.escape",                         {fg = oxocarbon.base15, bg = oxocarbon.none})
  --hl("@string.special", {})
  hl("@character",                             {link = "Character"})
  --hl("@character.special", {})
  hl("@boolean",                               {link = "Boolean"})
  hl("@number",                                {link = "Number"})
  hl("@float",                                 {link = "Float"})

  --[[ functions ]]
  hl("@function",                              {fg = oxocarbon.base12, bg = oxocarbon.none})
  hl("@function.builtin",                      {fg = oxocarbon.base12, bg = oxocarbon.none})
  --hl("@function.call", {})
  hl("@function.macro",                        {fg = oxocarbon.base07, bg = oxocarbon.none})
  hl("@method",                                {fg = oxocarbon.base07, bg = oxocarbon.none})
  --hl("@method.call", {})
  hl("@constructor",                           {fg = oxocarbon.base09, bg = oxocarbon.none})
  hl("@parameter",                             {fg = oxocarbon.base04, bg = oxocarbon.none})

  --[[ keywords ]]
  hl("@keyword",                               {fg = oxocarbon.base09, bg = oxocarbon.none})
  hl("@keyword.function",                      {fg = oxocarbon.base08, bg = oxocarbon.none})
  hl("@keyword.operator",                      {fg = oxocarbon.base08, bg = oxocarbon.none})
  --hl("@keyword.return", {})
  hl("@conditional",                           {fg = oxocarbon.base09, bg = oxocarbon.none})
  hl("@repeat",                                {fg = oxocarbon.base09, bg = oxocarbon.none})
  --hl("@debug", {})
  hl("@label",                                 {fg = oxocarbon.base15, bg = oxocarbon.none})
  hl("@include",                               {fg = oxocarbon.base09, bg = oxocarbon.none})
  hl("@exception",                             {fg = oxocarbon.base15, bg = oxocarbon.none})

  --[[ types ]]
  hl("@type",                                  {link = "Type"})
  hl("@type.builtin",                          {link = "Type"})
  --hl("@type.defintion", {})
  --hl("@type.qualifier", {})
  --hl("@storageclass", {})
  --hl("@storageclass.lifetime", {})
  hl("@attribute",                             {fg = oxocarbon.base15, bg = oxocarbon.none})
  hl("@field",                                 {fg = oxocarbon.base04, bg = oxocarbon.none})
  hl("@property",                              {fg = oxocarbon.base10, bg = oxocarbon.none})

  --[[ identifiers ]]
  hl("@variable",                              {fg = oxocarbon.base04, bg = oxocarbon.none})
  hl("@variable.builtin",                      {fg = oxocarbon.base04, bg = oxocarbon.none})
  hl("@constant",                              {fg = oxocarbon.base14, bg = oxocarbon.none})
  hl("@constant.builtin",                      {fg = oxocarbon.base07, bg = oxocarbon.none})
  hl("@constant.macro",                        {fg = oxocarbon.base07, bg = oxocarbon.none})
  hl("@namespace",                             {fg = oxocarbon.base07, bg = oxocarbon.none})
  hl("@symbol",                                {fg = oxocarbon.base15, bg = oxocarbon.none})

  --[[ text ]]
  hl("@text",                                  {fg = oxocarbon.base04, bg = oxocarbon.none})
  hl("@text.emphasis",                         {fg = oxocarbon.base10, bg = oxocarbon.none, italic = true})
  hl("@text.strong",                           {fg = oxocarbon.none,   bg = oxocarbon.none, bold = true})
  hl("@text.underline",                        {fg = oxocarbon.base10, bg = oxocarbon.none, underline = true})
  hl("@text.strike",                           {fg = oxocarbon.base10, bg = oxocarbon.none, strikethrough = true})
  hl("@text.title",                            {fg = oxocarbon.base10, bg = oxocarbon.none})
  hl("@text.literal",                          {fg = oxocarbon.base04, bg = oxocarbon.none})
  hl("@text.uri",                              {fg = oxocarbon.base14, bg = oxocarbon.none, underline = true})
  --hl("@text.math", {})
  --hl("@text.environment", {})
  --hl("@text.environment.name", {})
  --hl("@text.reference", {})
  --hl("@text.todo", {})
  --hl("@text.note", {})
  --hl("@text.warning", {})
  --hl("@text.danger", {})
  --hl("@text.diff.add", {})
  --hl("@text.diff.delete", {})

  --[[ tags ]]
  hl("@tag",                                   {fg = oxocarbon.base09, bg = oxocarbon.none})
  hl("@tag.attribute",                         {fg = oxocarbon.base15, bg = oxocarbon.none})
  hl("@tag.delimiter",                         {fg = oxocarbon.base15, bg = oxocarbon.none})
  hl("@tag.builtin.tsx",                       {link = "@tag.tsx"})

  --[[ conceal ]]
  --hl("@conceal", {})

  --[[ spell ]]
  --hl("@spell", {})
  --hl("@nospell", {})

  --[[ non-standard ]]
  --hl("@variable.global", {})

  --[[ locals ]]
  --hl("@definition", {})
  --hl("@definition.constant", {})
  --hl("@definition.function", {})
  --hl("@definition.method", {})
  --hl("@definition.var", {})
  --hl("@definition.parameter", {})
  --hl("@definition.macro", {})
  --hl("@definition.type", {})
  --hl("@definition.field", {})
  --hl("@definition.enum", {})
  --hl("@definition.namespace", {})
  --hl("@definition.import", {})
  --hl("@definition.associated", {})
  --hl("@scope", {})
  hl("@reference",                             {fg = oxocarbon.base04, bg = oxocarbon.none})
end

--[[ neovim ]]
hl("NvimInternalError",                      {fg = oxocarbon.base00, bg = oxocarbon.base08})
hl("NormalFloat",                            {fg = oxocarbon.base05, bg = oxocarbon.blend})
hl("FloatBorder",                            {fg = oxocarbon.blend,  bg = oxocarbon.blend})
hl("NormalNC",                               {fg = oxocarbon.base05, bg = oxocarbon.base00})
hl("TermCursor",                             {fg = oxocarbon.base00, bg = oxocarbon.base04})
hl("TermCursorNC",                           {fg = oxocarbon.base00, bg = oxocarbon.base04})

--[[ statusline/winbar ]]
hl("StatusLine",                             {fg = oxocarbon.base04, bg = oxocarbon.base02})
hl("StatusLineNC",                           {fg = oxocarbon.base04, bg = oxocarbon.base01})
hl("StatusNormal",                           {fg = oxocarbon.base01, bg = oxocarbon.base09})
hl("StatusInsert",                           {fg = oxocarbon.base01, bg = oxocarbon.base12})
hl("StatusVisual",                           {fg = oxocarbon.base01, bg = oxocarbon.base14})
hl("StatusReplace",                          {fg = oxocarbon.base01, bg = oxocarbon.base10})
hl("StatusCommand",                          {fg = oxocarbon.base01, bg = oxocarbon.base13})
hl("StatusTerminal",                         {fg = oxocarbon.base01, bg = oxocarbon.base07})
hl("StatusLineDiagnosticWarn",               {fg = oxocarbon.base14, bg = oxocarbon.base00})
hl("StatusLineDiagnosticError",              {fg = oxocarbon.base10, bg = oxocarbon.base00})

--[[ telescope ]]
hl("TelescopeBorder",                        {fg = oxocarbon.blend,  bg = oxocarbon.blend})
hl("TelescopePromptBorder",                  {fg = oxocarbon.base02, bg = oxocarbon.base02})
hl("TelescopePromptNormal",                  {fg = oxocarbon.base05, bg = oxocarbon.base02})
hl("TelescopePromptPrefix",                  {fg = oxocarbon.base09, bg = oxocarbon.base02})
hl("TelescopeNormal",                        {fg = oxocarbon.none,   bg = oxocarbon.blend})
hl("TelescopePreviewTitle",                  {fg = oxocarbon.base01, bg = oxocarbon.base12})
hl("TelescopePromptTitle",                   {fg = oxocarbon.base01, bg = oxocarbon.base09})
hl("TelescopeResultsTitle",                  {fg = oxocarbon.blend,  bg = oxocarbon.blend})
hl("TelescopeSelection",                     {fg = oxocarbon.none,   bg = oxocarbon.base02})
hl("TelescopePreviewLine",                   {fg = oxocarbon.none,   bg = oxocarbon.base01})
hl("TelescopeMatching",                      {fg = oxocarbon.base09, bg = oxocarbon.none})

--[[ notify ]]
hl("NotifyERRORBorder",                      {fg = oxocarbon.base08, bg = oxocarbon.none})
hl("NotifyWARNBorder",                       {fg = oxocarbon.base14, bg = oxocarbon.none})
hl("NotifyINFOBorder",                       {fg = oxocarbon.base05, bg = oxocarbon.none})
hl("NotifyDEBUGBorder",                      {fg = oxocarbon.base13, bg = oxocarbon.none})
hl("NotifyTRACEBorder",                      {fg = oxocarbon.base13, bg = oxocarbon.none})
hl("NotifyERRORIcon",                        {fg = oxocarbon.base08, bg = oxocarbon.none})
hl("NotifyWARNIcon",                         {fg = oxocarbon.base14, bg = oxocarbon.none})
hl("NotifyINFOIcon",                         {fg = oxocarbon.base05, bg = oxocarbon.none})
hl("NotifyDEBUGIcon",                        {fg = oxocarbon.base13, bg = oxocarbon.none})
hl("NotifyTRACEIcon",                        {fg = oxocarbon.base13, bg = oxocarbon.none})
hl("NotifyERRORTitle",                       {fg = oxocarbon.base08, bg = oxocarbon.none})
hl("NotifyWARNTitle",                        {fg = oxocarbon.base14, bg = oxocarbon.none})
hl("NotifyINFOTitle",                        {fg = oxocarbon.base05, bg = oxocarbon.none})
hl("NotifyDEBUGTitle",                       {fg = oxocarbon.base13, bg = oxocarbon.none})
hl("NotifyTRACETitle",                       {fg = oxocarbon.base13, bg = oxocarbon.none})

--[[ cmp ]]
hl("CmpItemAbbr",                            {fg = oxocarbon.base04, bg = oxocarbon.none})
hl("CmpItemAbbrMatch",                       {fg = oxocarbon.base14, bg = oxocarbon.none})
hl("CmpItemAbbrMatchFuzzy",                  {fg = oxocarbon.base14, bg = oxocarbon.none})
hl("CmpItemMenu",                            {fg = oxocarbon.base04, bg = oxocarbon.none})
hl("CmpItemKindInterface",                   {fg = oxocarbon.base01, bg = oxocarbon.base08})
hl("CmpItemKindColor",                       {fg = oxocarbon.base01, bg = oxocarbon.base08})
hl("CmpItemKindTypeParameter",               {fg = oxocarbon.base01, bg = oxocarbon.base08})
hl("CmpItemKindText",                        {fg = oxocarbon.base01, bg = oxocarbon.base09})
hl("CmpItemKindEnum",                        {fg = oxocarbon.base01, bg = oxocarbon.base09})
hl("CmpItemKindKeyword",                     {fg = oxocarbon.base01, bg = oxocarbon.base09})
hl("CmpItemKindConstant",                    {fg = oxocarbon.base01, bg = oxocarbon.base10})
hl("CmpItemKindConstructor",                 {fg = oxocarbon.base01, bg = oxocarbon.base10})
hl("CmpItemKindReference",                   {fg = oxocarbon.base01, bg = oxocarbon.base10})
hl("CmpItemKindFunction",                    {fg = oxocarbon.base01, bg = oxocarbon.base11})
hl("CmpItemKindStruct",                      {fg = oxocarbon.base01, bg = oxocarbon.base11})
hl("CmpItemKindClass",                       {fg = oxocarbon.base01, bg = oxocarbon.base11})
hl("CmpItemKindModule",                      {fg = oxocarbon.base01, bg = oxocarbon.base11})
hl("CmpItemKindOperator",                    {fg = oxocarbon.base01, bg = oxocarbon.base11})
hl("CmpItemKindField",                       {fg = oxocarbon.base01, bg = oxocarbon.base12})
hl("CmpItemKindProperty",                    {fg = oxocarbon.base01, bg = oxocarbon.base12})
hl("CmpItemKindEvent",                       {fg = oxocarbon.base01, bg = oxocarbon.base12})
hl("CmpItemKindUnit",                        {fg = oxocarbon.base01, bg = oxocarbon.base13})
hl("CmpItemKindSnippet",                     {fg = oxocarbon.base01, bg = oxocarbon.base13})
hl("CmpItemKindFolder",                      {fg = oxocarbon.base01, bg = oxocarbon.base13})
hl("CmpItemKindVariable",                    {fg = oxocarbon.base01, bg = oxocarbon.base14})
hl("CmpItemKindFile",                        {fg = oxocarbon.base01, bg = oxocarbon.base14})
hl("CmpItemKindMethod",                      {fg = oxocarbon.base01, bg = oxocarbon.base15})
hl("CmpItemKindValue",                       {fg = oxocarbon.base01, bg = oxocarbon.base15})
hl("CmpItemKindEnumMember",                  {fg = oxocarbon.base01, bg = oxocarbon.base15})

--[[ nvimtree ]]
hl("NvimTreeImageFile",                      {fg = oxocarbon.base12, bg = oxocarbon.none})
hl("NvimTreeFolderIcon",                     {fg = oxocarbon.base12, bg = oxocarbon.none})
hl("NvimTreeWinSeparator",                   {fg = oxocarbon.base00, bg = oxocarbon.base00})
hl("NvimTreeFolderName",                     {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("NvimTreeIndentMarker",                   {fg = oxocarbon.base02, bg = oxocarbon.none})
hl("NvimTreeEmptyFolderName",                {fg = oxocarbon.base15, bg = oxocarbon.none})
hl("NvimTreeOpenedFolderName",               {fg = oxocarbon.base15, bg = oxocarbon.none})
hl("NvimTreeNormal",                         {fg = oxocarbon.base04, bg = oxocarbon.base00})

--[[ neogit ]]
hl("NeogitBranch",                           {fg = oxocarbon.base10, bg = oxocarbon.none})
hl("NeogitRemote",                           {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("NeogitHunkHeader",                       {fg = oxocarbon.base04, bg = oxocarbon.base02})
hl("NeogitHunkHeaderHighlight",              {fg = oxocarbon.base04, bg = oxocarbon.base03})

--[[ gitsigns ]]
hl("GitSignsCurrentLineBlame",               {link = "Comment"})

--[[ hydra ]]
hl("HydraRed",                               {fg = oxocarbon.base12, bg = oxocarbon.none})
hl("HydraBlue",                              {fg = oxocarbon.base09, bg = oxocarbon.none})
hl("HydraAmaranth",                          {fg = oxocarbon.base10, bg = oxocarbon.none})
hl("HydraTeal",                              {fg = oxocarbon.base08, bg = oxocarbon.none})
hl("HydraHint",                              {fg = oxocarbon.none,   bg = oxocarbon.blend})

--[[ alpha ]]
hl("alpha1",                                 {fg = oxocarbon.base03, bg = oxocarbon.none})
hl("alpha2",                                 {fg = oxocarbon.base04, bg = oxocarbon.none})
hl("alpha3",                                 {fg = oxocarbon.base03, bg = oxocarbon.none})

--[[ headlines.nvim ]]
hl("CodeBlock",                              {fg = oxocarbon.none,   bg = oxocarbon.base01})

--[[ nvim-bufferline ]]
hl("BufferLineDiagnostic",                   {fg = oxocarbon.base10, bg = oxocarbon.none})
hl("BufferLineDiagnosticVisible",            {fg = oxocarbon.base10, bg = oxocarbon.none})

--[[ preservim/vim-markdown ]]
hl("htmlH1",                                 {link = "markdownH1"})
hl("mkdRule",                                {link = "markdownRule"})
hl("mkdListItem",                            {link = "markdownListMarker"})
hl("mkdListItemCheckbox",                    {link = "markdownListMarker"})

--[[ vimwiki/vimwiki ]]
hl("VimwikiHeader1",                         {link = "markdownH1"})
hl("VimwikiHeader2",                         {link = "markdownH1"})
hl("VimwikiHeader3",                         {link = "markdownH1"})
hl("VimwikiHeader4",                         {link = "markdownH1"})
hl("VimwikiHeader5",                         {link = "markdownH1"})
hl("VimwikiHeader6",                         {link = "markdownH1"})
hl("VimwikiHeaderChar",                      {link = "markdownH1"})
hl("VimwikiList",                            {link = "markdownListMarker"})
hl("VimwikiLink",                            {link = "markdownUrl"})
hl("VimwikiCode",                            {link = "markdownCode"})

--[[ flash ]]
hl("FlashLabel",                             {fg = oxocarbon.base05, bg = oxocarbon.base00})

return {oxocarbon = oxocarbon}
