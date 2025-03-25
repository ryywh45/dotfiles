return {
  'voldikss/vim-floaterm',
  config = function() -- Open a new terminal at background
    vim.cmd([[FloatermNew --height=0.9 --width=0.9 --wintype=float --silent]])
  end,
}
