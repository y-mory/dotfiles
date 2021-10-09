# ~/.bashrcを読み込む
if [ -f ~/.bashrc ] ; then . ~/.bashrc ; fi

# pyenv環境変数
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"
eval "$(pyenv init -)"
