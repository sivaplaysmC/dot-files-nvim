require('telescope').setup{
  defaults = {
 -- Defa
borderchars = {
       '', '', '', '', '', '', '', '',
      prompt = { '─', '│', '─', '│', '┌', '┐', '┘', '└'}, 
      results = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
      preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
    }, -- ult configuration for telescope goes here:
    config_key = value,
    winblend = 2 ,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}
local TelescopePrompt = {
    TelescopePromptNormal = {

        fg = '#f8f8f2',
        bg = '#282a36',
    },
    TelescopePromptBorder = {
        bg = '#282a36',
    },
    TelescopePromptTitle = {
        fg = '#f8f8f2',
        bg = '#282a36',
    },
    TelescopePreviewTitle = {
        fg = '#f8f8f2',
        bg = '#282a36',
    },
    TelescopeResultsTitle = {
        fg = '#f8f8f2',
        bg = '#282a36',
    },
}
for hl, col in pairs(TelescopePrompt) do
    vim.api.nvim_set_hl(0, hl, col)
end
