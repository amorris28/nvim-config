# My Minimal Nvim Config

Simple nvim setup with:
- Catppuccin theme
- Built-in syntax highlighting
- No heavy dependencies

## Install

### 1. Install nvim as appimage
```
mkdir -p ~/.local/bin
cd ~/.local/bin
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
chmod +x nvim-linux-x86_64.appimage
ln -s nvim-linux-x86_64.appimage nvim
```

#### (Optional) If FUSE is unavailable, extract appimage manually
```
cd ~/.local/bin
./nvim.appimage --appimage-extract
mv squashfs-root nvim-squashfs
ln -s nvim-squashfs/usr/bin/nvim nvim
```

#### (Optional) Add to PATH if not already there
```
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

### 2. Clone this repo
```
git clone https://github.com/amorris28/nvim-config ~/.config/nvim
```

### 3. Run nvim to install plugins and finish installation
```
nvim
```

#### (Optional) Install on offline machine without access to Github
First, run the above steps on an internet-connected machine. Then:
```
cd ~
tar -czf nvim-portable.tar.gz \
  .config/nvim \
  .local/share/nvim/lazy
```

Copy `nvim-portable.tar.gz` to the offline machine and run:
```
cd ~
tar -xzf nvim-portable.tar.gz
```

