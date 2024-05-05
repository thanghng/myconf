# THIS IS MY DOTFILES

## Setup
- Create bare repo
```bash
git init --bare $HOME/.myconf
```

- Clonning
```bash
git clone --separate-git-dir=$HOME/.myconf https://github.com/thanghng/myconf.git myconftmp
rsync --recursive --verbose --exclude '.git' myconftmp/ $HOME/
rm --recursive myconftmp
```

- Configuration
```bash
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
```

### Settings note
- Add $HOME/bin to path
```bash
# From https://wiki.archlinux.org/title/environment_variables#Using_shell_initialization_files
set_path(){
    # Check if user id is 1000 or higher
    [ "$(id -u)" -ge 1000 ] || return

    for i in "$@";
    do
        # Check if the directory exists
        [ -d "$i" ] || continue
        # Check if it is not already in your $PATH.
        echo "$PATH" | grep -Eq "(^|:)$i(:|$)" && continue
        # Then append it to $PATH and export it
        export PATH="${PATH}:$i"
    done
}

set_path ~/bin
```

- IBus config
```bash
GTK_IM_MODULE=ibus
QT_IM_MODULE=ibus
XMODIFIERS=@im=ibus
QT4_IM_MODULE=ibus
CLUTTER_IM_MODULE=ibus
GLFW_IM_MODULE=ibus
```
