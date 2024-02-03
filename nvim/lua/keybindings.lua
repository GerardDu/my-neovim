-- leader键 空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 省略其他基础配置
local opt = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- 键位说明
-- Ctrl简写为C-，Shift简写为S-，Alt简写为A-

-- 1.配置NvimTree文件目录的打开或关闭
-- alt + m 打开或关闭文件浏览器Nvim-Tree  注：在macos下，进入nvim后，直接同时按fn + option(alt) + m，即可完成文件目录树的打开和切换。
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt) 

-- 2.配置telescope插件查找文件
-- alt + s 查找文件
map("n", "<A-s>", ":Telescope find_files<CR>", opt) 