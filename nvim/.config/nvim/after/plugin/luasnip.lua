local luasnip = require "luasnip"
luasnip.filetype_extend("templ", { "html" })
require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load()
