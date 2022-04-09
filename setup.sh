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

# git completion prompt 設定
# 初回のみ
mkdir ~/.zsh
wget -O ~/.zsh/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
wget -O ~/.zsh/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
wget -O ~/.zsh/_git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh

# homebrewパッケージインストール
brew bundle install

# 当該ファイルのパスを取得
this_dir=$(cd $(dirname path); pwd)

# シンボリックリンク
ln -sf ${this_dir}/.zshrc ~/.zshrc
ln -sf ${this_dir}/.zsh_profile  ~/.zsh_profile
ln -sf ${this_dir}/.vimrc  ~/.vimrc

# VScode設定
. ${this_dir}/.vscode/install_extensions.sh
ln -sf ${this_dir}/.vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -sf ${this_dir}/.vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

