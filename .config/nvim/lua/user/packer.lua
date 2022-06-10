local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	print("Installing packer close and reopen Neovim...")
end

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "packer.lua" },
  command = [[source <afile> | PackerSync]],
})

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init({
	display = {
		open_fn = function()
			return require('packer.util').float({ border = 'rounded' })
		end
	}
}
)

return require("packer").startup(
	function(use)

		-- Packer can manage itself
		use {"wbthomason/packer.nvim"}

		-- Color Scheme
    use {"norcalli/nvim-base16.lua"}

    -- Snippets
    use {"L3MON4D3/LuaSnip"}
    use {"rafamadriz/friendly-snippets"}

    -- Automatic Completion
    use {"hrsh7th/nvim-cmp"}
    use {"hrsh7th/cmp-nvim-lsp"}
    use {"saadparwaiz1/cmp_luasnip"}
    use {"hrsh7th/cmp-buffer"}
    use {"hrsh7th/cmp-path"}

    -- Language Server Protocol
		use {"neovim/nvim-lspconfig"}
    use {"williamboman/nvim-lsp-installer"}

    -- Treeshitter
		use {"nvim-treesitter/nvim-treesitter", run = { ":TSUpdate" } }
		use {"p00f/nvim-ts-rainbow", requires = { "nvim-treesitter/nvim-treesitter" } }
		use {"m-demare/hlargs.nvim", requires = { "nvim-treesitter/nvim-treesitter" } }
    use {"haringsrob/nvim_context_vt", requires = { "nvim-treesitter/nvim-treesitter" } }

    -- Language Support
    use {"elkowar/yuck.vim"}
    use {"baskerville/vim-sxhkdrc"}
    use {"Fymyte/rasi.vim"}
    use {"davidgranstrom/nvim-markdown-preview"}

    -- Color Preview
		use {"norcalli/nvim-colorizer.lua"}

    -- Lots o' Stuff
    use {"echasnovski/mini.nvim"}

    -- Start Screen
    use {"goolord/alpha-nvim", requires = { "kyazdani42/nvim-web-devicons" } }

    -- Powerful Fuzzy Finder
		use {"nvim-telescope/telescope.nvim", requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } } }

		-- Local Plugins
    use {"~/Programming/lua/neovim/tui-nvim/"}
		use {"~/Programming/lua/neovim/jaq-nvim/"}

		if PACKER_BOOTSTRAP then
			require("packer").sync()
		end

	end
)
