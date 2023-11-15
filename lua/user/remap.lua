vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--jk to normal mode
vim.keymap.set("v", "jk", "<ESC>")
vim.keymap.set("v", "kj", "<ESC>")
vim.keymap.set("!", "jk", "<ESC>")
vim.keymap.set("!", "kj", "<ESC>")

-- Move selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Keep cursor still
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- dap
vim.keymap.set("n", "<leader>dh", "<cmd>lua require('dap').toggle_breakpoint()<CR>")
-- vim.keymap.set("n", "<S-k>", "<cmd>lua require('dap').step_out()<CR>")
-- vim.keymap.set("n", "<S-l>", "<cmd>lua require('dap').step_into()<CR>")
-- vim.keymap.set("n", "<S-j>", "<cmd>lua require('dap').step_over()<CR>")
vim.keymap.set("n", "<leader>ds", "<cmd>lua require('dap').close()<CR>")
vim.keymap.set("n", "<leader>dn", "<cmd>lua require('dap').continue()<CR>")
vim.keymap.set("n", "<leader>dk", "<cmd>lua require('dap').up()<CR>")
vim.keymap.set("n", "<leader>dj", "<cmd>lua require('dap').down()<CR>")
vim.keymap.set("n", "<leader>d_", "<cmd>lua require('dap').run_last()<CR>")
vim.keymap.set("n", "<leader>dr", "<cmd>lua require('dap').repl.open({}, 'vsplit')<CR><C-w>l")
-- vim.keymap.set("n", "<leader>di", "<cmd>lua require('dap').hover()<CR>")
-- vim.keymap.set("n", "<leader>d?", "<cmd>lua require('dap').visual_hover()<CR>")
-- vim.keymap.set("n", "<leader>de", "<cmd>lua require('dap').toggle_breakpoint()<CR>")
-- vim.keymap.set("n", "<leader>da", "<cmd>lua require('dap').toggle_breakpoint()<CR>")
-- vim.keymap.set("n", "<leader>dA", "<cmd>lua require('dap').toggle_breakpoint()<CR>")
