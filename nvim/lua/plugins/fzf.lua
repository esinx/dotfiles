return {
	{
		"junegunn/fzf",
	},
	{
		"junegunn/fzf.vim",
		init = function()
			-- Maps CMD + Shift + P to fzf
			vim.api.nvim_set_keymap("n", "<D-S-p>", ":Files<CR>", { noremap = true, silent = true })

			-- Maps CMD + P to fzf
			vim.api.nvim_set_keymap("n", "<D-p>", ":Commands<CR>", { noremap = true, silent = true })
		end,
	},
}
