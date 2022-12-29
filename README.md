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

# Run nvim first time
`cd ~/.config/nvim/; nvim .`
Wait lazy.nvim install to finish and treesitter to finish, then quit.

## Check health and install missing tools
In nvim run command ':checkhealth'.
Tool [rg](https://github.com/BurntSushi/ripgrep#installation) and [fd](https://github.com/sharkdp/fd#installation) are recommended to be installed.

