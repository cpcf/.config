# Personal collection of config files

I considered using a bare git repo for this, but think I'm more likely to remember how I've set this up and less likely to make a mistake when setting it up on a new machine.

## Setup
Clone this repo to `~/.config`:
```bash
git clone https://github.com/cpcf/dotfiles.git ~/.config
```

Then, run the following to create symlinks for .dotfiles expected in `~`:
```bash
ln -s ~/.config/git/.gitconfig ~/.gitconfig
ln -s ~/.config/oh-my-zsh/.p10k.zsh ~/.p10k.zsh
ln -s ~/.config/wezterm/.wezterm.lua ~/.wezterm.lua
ln -s ~/.config/zsh/.zshrc ~/.zshrc
```

