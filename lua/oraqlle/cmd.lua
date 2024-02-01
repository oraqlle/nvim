vim.api.nvim_create_user_command(
    'ReFindReplace',
    function (opts)
      print(string.format("/%s/gj", opts.fargs[1]))
      print(string.format("%%s/%s/%s/gc", opts.fargs[1], opts.fargs[2]))
      vim.cmd.vimgrep({
        args = {
          string.format("/%s/gj", opts.fargs[1]),
          opts.fargs[3]
        }
      })

      vim.cmd.cfdo({
        args = {
          string.format("%%s/%s/%s/gc", opts.fargs[1], opts.fargs[2])
        }
      })

      vim.cmd.update({})
    end,
    { nargs = "*" }
)
