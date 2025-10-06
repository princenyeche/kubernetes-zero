#!/bin/bash
# create zshrc
cd ~/ || exit
touch .zshrc
# use >> to append to the file
echo 'source <(kubectl completion zsh)' >> .zshrc
echo "eval \"$(task --completion zsh)\" " >> .zshrc
new_path="/opt/homebrew/share/zsh/site-functions"
kubectl completion zsh >> "${new_path}/_kubectl"
task --completion zsh  > "${new_path}/_task"