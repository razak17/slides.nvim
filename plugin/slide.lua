vim.api.nvim_create_augroup('SlideFt', {})
vim.api.nvim_create_autocmd({ 'BufRead' }, {
  group = 'SlideFt',
  pattern = '*.sld',
  callback = function() vim.bo.filetype = 'slide' end,
})
