export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"

#export BOB_PATH="~/.cargo/bin"
export BOB_PATH="/Users/zhangzhi/.cargo/bin"
export NVIM_PATH="$HOME/Library/Application Support/neovim/bin"

export PATH=$PATH:$NVIM_PATH:$BOB_PATH

alias vim="nvim"

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# export WORKON_HOME=/usr/local/Caskroom/miniconda/base/envs
# source /usr/local/bin/workon.sh

# Created by `pipx` on 2023-02-09 00:31:14
export PATH="$PATH:/Users/zhangzhi/.local/bin"
#
export LC_ALL=zh_CN.UTF-8


# [ -f ~/.fzf.bash ] && source ~/.fzf.bash
