return {
	"neovim/nvim-lspconfig",

	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},

	config = function()
		local mason = require("mason")
		local test = require("mason-lspconfig")
		local lspconfig = require("lspconfig")

		mason.setup()
	end,
}
