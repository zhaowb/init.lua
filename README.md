# init.lua
A neovim config originally based on [ThePrimeagen's init.lua](https://github.com/ThePrimeagen/init.lua) then changed to [Lazy.nvim](https://github.com/folke/lazy.nvim).

~The [kickstart](https://github.com/nvim-lua/kickstart.nvim/blob/master/init.lua) is much easier to start.~

After using Lazy.nvim, this is kind of user friendly - it can automatically install packages (via mason) on the first nvim invocation.

# Install from clone

## Create python venv
Create a dedicated python venv for nvim, to be isolated from system python or any project's virtual environment.

```
python -m venv ~/.venv/nvim
~/.venv/nvim/bin/python -m pip install pynvim
```

## Git clone or copy this repo
If ~/.config/nvim/ folder is empty or it can be removed and create a new one, then use git clone:
```
git clone https://github.com/zhaowb/init.lua.git ~/.config/nvim/
```

## ~Bypass treesitter query error~
Following is not in use currently. Leave it for reference.
Without this bypass, `:checkhealth nvim-treesitter` reports query error on 'help' or 'vim'.
Depend on which one failed, apply corresponding bypass.
```
cd ~/.local/share/nvim/lazy/nvim-treesitter/queries/help/
git apply ~/.config/nvim/bypass-treesitter-query-error.diff
git apply ~/.config/nvim/bypass-treesitter-vim-highlight-error.diff
```
After :Lazy auto refresh treesitter, the HEAD may detached. In this case, it may need manual sync to master and re-apply bypass depending on the situation.

## ~pycodestyle config~
Following is not in use. Only for reference.

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

# Python formatting functions
'gd' for goto definition (by [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim/lsp-zero.nvim/wiki/Under-the-hood)
'gl' for goto diagnositic in float window (see above link), '[d', ']d' for prev/next diagnositic
"<leader>F" for format current file (by mappings.lua), including isort.

%%comment ?%%
%%fake 2%%
