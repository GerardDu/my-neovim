-- 二、插件系统
-- 1.插件管理器
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 2.安装插件
require("lazy").setup({ 
	-- 所有插件的安装都在这里
	-- 颜色主题插件Colorscheme，这个看个人爱好
	{
	    "folke/tokyonight.nvim",
	    lazy = false,
	    priority = 1000,
	    opts = {}
	},
	-- 插件：文件目录管理器
	{
	    "nvim-tree/nvim-tree.lua",
	    version = "*",
	    lazy = false,
	    dependencies = {"nvim-tree/nvim-web-devicons"},
	    config = function()
	        require("nvim-tree").setup {}
	    end
	}, 
	-- 插件：代码语法高亮，支持多种语言
	{"nvim-treesitter/nvim-treesitter"}, 
	-- 插件：文件状态展示插件
	{
	    'nvim-lualine/lualine.nvim',
	    config = function()
	        require('lualine').setup()
	    end
	},
	-- 插件：查询搜索文件
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
	}
})

-- 3.启动插件
vim.cmd.colorscheme("tokyonight-moon")
