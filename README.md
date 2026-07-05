dotfiles
========

k-hal の dotfiles です。[GNU Stow](https://www.gnu.org/software/stow/) を使ってホームディレクトリにシンボリックリンクを展開します。

## 必要なもの

- [GNU Stow](https://www.gnu.org/software/stow/)

```sh
# macOS
brew install stow

# Debian/Ubuntu
sudo apt install stow
```

## セットアップ

```sh
# リポジトリをクローン
git clone https://github.com/k-hal/dotfiles.git ~/dotfiles

# dotfiles ディレクトリに移動して stow を実行
cd ~/dotfiles
stow --target=$HOME .
```

ホームディレクトリに各 dotfile へのシンボリックリンクが作成されます。

## アンインストール

```sh
cd ~/dotfiles
stow --delete --target=$HOME .
```

## ファイル構成

| パス | 説明 |
|------|------|
| `.zshrc` | Zsh 設定 |
| `.bashrc` / `.bash_profile` | Bash 設定 |
| `.tmux.conf` | tmux 設定 |
| `.tigrc` | tig 設定 |
| `.screenrc` | GNU Screen 設定 |
| `.tcshrc` | tcsh 設定 |
| `.ssh/config` | SSH クライアント設定 |
| `.config/fish/` | Fish shell 設定 |
| `.config/ghostty/` | Ghostty ターミナル設定 |
| `.config/git/` | Git 設定 |
