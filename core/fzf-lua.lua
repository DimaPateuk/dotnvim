vim.keymap.set("n", "<c-p>", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
vim.keymap.set("n", "<c-P>", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })


vim.keymap.set("n", "<Leader>b", "<cmd>lua require('fzf-lua').buffers()<CR>", { silent = true })


vim.keymap.set("n", "<Leader>rg", "<cmd>lua require('fzf-lua').live_grep()<CR>", { silent = true })
