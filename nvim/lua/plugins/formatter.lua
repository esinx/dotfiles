return {
	{
		"sbdchd/neoformat",
		config = function()
			vim.g.neoformat_try_node_exe = 1
			local fmt_group = vim.api.nvim_create_augroup("fmt", { clear = true })
			-- Add an autocmd to format before saving
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = fmt_group,
				pattern = "*",
				command = "undojoin | Neoformat",
			})
		end,
	},
}
