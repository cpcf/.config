return {
  'Exafunction/codeium.vim',
  event = 'BufEnter',
  config = function()
    vim.g.codeium_no_map_tab = 1
    vim.keymap.set('i', '<C-\\>', function()
      return vim.fn['codeium#AcceptNextLine']()
    end, { expr = true, silent = true })
    vim.keymap.set('i', '<S-Tab>', function()
      return vim.fn['codeium#Accept']()
    end, { expr = true, silent = true })
  end,
}
