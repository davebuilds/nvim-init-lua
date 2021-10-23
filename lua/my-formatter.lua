require("formatter").setup(
  {
    filetype = {
      typescript = {
        function()
          return {
            -- prerequisite: `npm install -g prettier`
            exe = "prettier",
            args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))},
            stdin = true
          }
        end
      },
      lua = {
        function()
          return {
            -- prerequisite: `npm install -g lua-fmt`
            exe = "luafmt",
            args = {"--indent-count", 2, "--stdin"},
            stdin = true
          }
        end
      }
    }
  }
)

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.jsx,*.ts,*.tsx,*.rs,*.lua, FormatWrite
augroup END
]],
  true
)
