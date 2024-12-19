return {
    'numToStr/Comment.nvim',
  config = function()
    require('Comment').setup({
      toggler = {
        line = ',c',
        block = ',<Space>'
      }
    })
  end
}
