# bundleインストール
brew bundle 
# ホームの.Brewfileからインストール実施
brew bundle --global

# bundleファイルを作成(上書き)
brew bundle dump --force

# bundle一覧を確認
brew bundle list

# bundleに無いものを一括アンインストール
brew bundle cleanup

# bundle内でアップデートチェック
brew bundle check

# brew upgradでパーミッションエラー時
sudo chown -R $(whoami) $(brew --prefix)/*
