local utils = { }

local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

-- Setup vim option
function utils.opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end

-- Setup vim key map
function utils.map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function utils.define_augroups(definitions) -- {{{1
  -- Create autocommand groups based on the passed definitions
  --
  -- The key will be the name of the group, and each definition
  -- within the group should have:
  --    1. Trigger
  --    2. Pattern
  --    3. Text
  -- just like how they would normally be defined from Vim itself
  for group_name, definition in pairs(definitions) do
      vim.cmd('augroup ' .. group_name)
      vim.cmd('autocmd!')

      for _, def in pairs(definition) do
          local command = table.concat(vim.tbl_flatten {'autocmd', def}, ' ')
          vim.cmd(command)
      end

      vim.cmd('augroup END')
  end
end

return utils
