def main() : 
            formatting = {
            format = lspkind.cmp_format({
              mode = "symbol_text",
              menu = ({
                buffer = "[Buffer]",
                nvim_lsp = "[LSP]",
                luasnip = "[LuaSnip]",
                nvim_lua = "[Lua]",
                latex_symbols = "[Latex]",
              })
            }),
            },






              formatting = {
                fields = { "kind", "abbr", "menu" },
                format = function(_, vim_item)
                  vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
                  return vim_item
                end,
              },
            pass
print("JI")
print("Hola")
