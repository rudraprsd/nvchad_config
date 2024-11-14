require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

map("i", "<C-l>", function ()
  vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
end, { desc = 'Copilot Accept', noremap = true, silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Your custom mappings for cmp
local cmp = require 'cmp'

cmp.setup {
  mapping = {
    ["<CR>"] = cmp.mapping(function(fallback)
      fallback() --Ignore <CR> key
    end, { "i", "s" }),
    ["<Tab>"] = cmp.mapping(function(fallback)
      fallback()  -- Ignore <Tab>
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      fallback()  -- Ignore <S-Tab>
    end, { "i", "s" }),
    ["<C-y>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },  -- Set <C-y> to confirm
  },
}
