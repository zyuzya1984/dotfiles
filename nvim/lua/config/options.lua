local options = {
    laststatus = 3,
    number = true,
    relativenumber = true,
    clipboard = "unnamedplus",
    swapfile = false,
    cursorline = true,
    tabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    ignorecase = true,
    smartcase = true,
    smoothscroll = false,
    cmdheight = 1,
    showmode = false,
    showcmd = false,
    wrap = false,
    termguicolors = true,
    ttyfast = true,
}

for k,v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd(":hi statusline guibg=NONE")
