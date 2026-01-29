return {
  {
    'nvim-telescope/telescope.nvim',

    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local telescope = require('telescope')
      local builtin = require('telescope.builtin')
      local keymap = vim.keymap

      telescope.setup({
        defaults = {
          preview = {
            treesitter = false, 
          },
        },
      })

      keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })      
      keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Find by Grep' })    
      keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find Buffers' })     
      keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Find Help' })     
    end
  }
}
