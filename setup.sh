# git_setup.sh
echo 'githubユーザー名を入力してください'
read user_name
echo 'githubメールアドレスを入力してください'
read emai_address
mkdir -p ~/.config/git/
echo '.DS_Store' >> ~/.config/git/ignore
git config --global user.name "$user_name"
git config --global user.email "$emai_address"
git config --global color.ui true
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global push.default current
git config --global core.excludesfile "~/.config/git/ignore"
git config --global core.pager "LESSCHARSET=utf-8 less"
git config --global core.quotepath false

# ブランチ名をプロンプト表示
# 初回のみ
wget -O ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
wget -O ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

# homebrew
brew bundle install

# シンボリックリンク
ln -s .bashrc ~/.bashrc
ln -s .bash_profile  ~/.bash_profile
ln -s .vimrc  ~/.vimrc

