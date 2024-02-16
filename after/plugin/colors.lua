
function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })


	-- vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })


    -- vim.api.nvim_set_hl(0, "Chicken", {
    --   bg = "#000000",
    --   fg = "fg",
    -- })


    -- vim.api.nvim_create_augroup("_terminal", { clear = true })
    -- vim.api.nvim_create_autocmd("TermOpen", {
    --     command = "setlocal winhighlight=Normal:NormalFloat",
    --     group = "_terminal",
    -- })

end

ColorMyPencils()
