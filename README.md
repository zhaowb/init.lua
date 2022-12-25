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

## Install packer.nvim
See https://github.com/wbthomason/packer.nvim#quickstart
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Run nvim first time
`cd ~/.config/nvim/; nvim .`
Use `:Ex` open file explorer navigate to ~/.config/nvim/lua/theprimeagen/packer.lua
Do `:so`
Do `:PackerSync`
Quit and reopen nvim, press Enter skip treesitter messages and wait for treesitter installation done.

## bypass treesitter query issue
```
cd ~/.local/share/nvim/site/pack/packer/start/nvim-treesitter/queries/vim/
git apply ~/.config/nvim/bypass-treesitter-vim-highlight-error.diff
```
Before fix, ':checkhealth' shows vim query for hightlight fail.
After fix vim hightlight is working.

