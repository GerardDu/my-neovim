-- 一、配置文件
-- 1.文件相关
-- 将文件的编码格式统一设置为UTF-8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "UTF-8"

-- 2.缩进
-- 设置每个缩进级别使用的空格数
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
-- 自动缩进
vim.opt.ai = true
-- 智能缩进
vim.opt.si = true
-- Neovim 会自动在新行添加空格或制表符以匹配现有的缩进级别
vim.opt.autoindent = true

-- 3.显示
-- 显示行号
vim.wo.number = true
-- 高亮当前所在行
vim.wo.cursorline = true
-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- 显示右侧参考线
vim.wo.colorcolumn = "80"
-- 命令行高为2，提供足够的显示空间
vim.o.cmdheight = 2
-- >> << 时移动长度
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
-- 光标在行首尾时<Left><Right>可以跳到下一行,非常实用
vim.o.whichwrap = '<,>,[,]'
-- 补全增强
vim.o.wildmenu = true
-- 不可见字符的显示，这里只把空格显示为一个点
-- vim.o.list = true
-- vim.o.listchars = "space:·"
-- 永远显示 tabline 会在左侧状态列的顶上显示文件名
vim.o.showtabline = 2

-- 3.搜索
-- 高亮所有匹配的搜索模式
vim.opt.hlsearch = true
-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true

-- 4.加载文件
-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true

-- 5.配置文件
-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- nvim-tree
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true