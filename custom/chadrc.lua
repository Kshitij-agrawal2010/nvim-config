local M = {}

M.ui = {
  theme_toggle = { "dark_horizon", "ayu_dark" },
  theme = "ayu_dark",

  statusline = {
    overriden_modules = function()
      local st_modules = require "nvchad_ui.statusline.default"
      -- this is just default table of statusline modules

      return {
        LSP_status = function()
          if rawget(vim, "lsp") then
            for _, client in ipairs(vim.lsp.get_active_clients()) do
              if client.attached_buffers[vim.api.nvim_get_current_buf()] and client.name ~= "null-ls" then
                return (vim.o.columns > 100 and "%#St_LspStatus#" .. "   LSP ~ " .. client.name .. " ")
                  or "   LSP "
              end
            end
          end
        end,
      }
    end,
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
