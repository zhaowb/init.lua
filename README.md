# init.lua
A neovim config based on [ThePrimeagen's init.lua](https://github.com/ThePrimeagen/init.lua).

This is not very user friendly to install from clone. The [kickstart](https://github.com/nvim-lua/kickstart.nvim/blob/master/init.lua) is much easier to start.

# Install from clone

## Create python venv
Create a dedicated python venv for nvim, to be isolated from system python or any project's virtual environment.

```
python -m venv ~/.venv/nvim
~/.venv/nvim/bin/python -m pip install pynvim
```

## Git clone or copy
If ~/.config/nvim/ folder is empty or it can be removed and create a new one, then use git clone:
```
git clone https://github.com/zhaowb/init.lua.git ~/.config/nvim/
```

## Bypass treesitter query error
Without this bypass, `:checkhealth nvim-treesitter` reports query error on 'help' or 'vim'.
Depend on which one failed, apply corresponding bypass.
```
cd ~/.local/share/nvim/lazy/nvim-treesitter/queries/help/
git apply ~/.config/nvim/bypass-treesitter-query-error.diff
git apply ~/.config/nvim/bypass-treesitter-vim-highlight-error.diff
```
After :Lazy auto refresh treesitter, the HEAD may detached. In this case, it may need manual sync to master and re-apply bypass depending on the situation.

## pycodestyle config
Python LSP uses pycodestyle by default (pylsp.plugins.pycodestyle)
Set config file as example (if none exists and necessary to make changes):
```
cat > ~/.config/pycodestyle
[pycodestyle]
max-line-length = 160 
^D
```
Reference: https://pycodestyle.pycqa.org/en/latest/intro.html#configuration

# Run nvim first time
`cd ~/.config/nvim/; nvim .`
Wait lazy.nvim install to finish and treesitter to finish, then quit.

## Check health and install missing tools
In nvim run command ':checkhealth'.
Tool [rg](https://github.com/BurntSushi/ripgrep#installation) and [fd](https://github.com/sharkdp/fd#installation) are recommended to be installed.

