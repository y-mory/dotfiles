# 当該ファイルのパスを取得
this_dir=$(cd $(dirname path); pwd)

# bundleファイルを作成(上書き)
brew bundle dump --force > ${this_dir}

# vscodeエクステンション出力
code --list-extensions > ${this_dir}/extensions

