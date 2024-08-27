return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			markdown = { "vale" },
			javascript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescript = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			css = { "stylelint" },
			scss = { "stylelint" },
			html = { "htmlhint" },
			json = { "jsonlint" },
			yaml = { "yamllint" },
			sh = { "shellcheck" },
			vim = { "vint" },
			lua = { "luacheck" },
		}

		local lint_autogroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_autogroup,
			callback = function()
				lint.try_lint()
			end,
		})

		vim.keymap.set(
			"n",
			"<leader>ln",
			lint.try_lint,
			{ desc = "Trigger linting for current file", noremap = true, silent = true }
		)
	end,
}
