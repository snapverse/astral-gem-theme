#!/bin/sh
echo "Welcome git user!"

if [[ $num -gt 10 ]] then
  echo "Number is greater than 10."
elif [[ $num -eq 10 ]] then
  echo "Number is equal to 10."
else
  echo "Number is less than 10."
fi


function awesome_function {
  echo "Your name is $1"
}

# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.

export ZSH=${HOME}/.oh-my-zsh
export PATH=/usr/local/opt/php@7.4/bin:${PATH}
export PATH=/usr/local/opt/php@7.4/sbin:${PATH}
export PATH=/usr/local/opt/mysql@5.7/bin:${PATH}
export PATH=${HOME}/bin:/usr/local/bin:${PATH}
export PATH=/usr/local/bin:/usr/local/sbin:${PATH}
export PATH=/usr/local/opt/mongodb-community@4.4/bin:${PATH}
export PATH="${PATH}:/Applications/VS Code Insiders.app/Contents/Resources/app/bin"
export PATH=/Applications/rar:${PATH}
export PATH=/Users/account/.deno/bin:${PATH}
export PATH=/usr/local/opt/node@16/bin:${PATH}
# For the compilers
export LDFLAGS="-L/usr/local/opt/php@7.4/lib"
export CPPFLAGS="-I/usr/local/opt/php@7.4/include"
export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"
export PKG_CONFIG_PATH="/usr/local/opt/mysql@5.7/lib/pkgconfig"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

plugins=(git)
source $ZSH/oh-my-zsh.sh

# User configuration


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
        export EDITOR='code'
else
        export EDITOR='code'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"