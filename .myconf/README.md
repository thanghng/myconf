# THIS IS MY DOTFILES

## Setup
```bash
git init --bare $HOME/.myconf
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'" >> $HOME/.bashrc
```

## Replication
```
git clone --separate-git-dir=$HOME/.myconf https://github.com/thanghng/myconf.git myconftmp
rsync --recursive --verbose --exclude '.git' myconftmp/ $HOME/
rm --recursive myconftmp
```
