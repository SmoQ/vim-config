# How install
1. Copy the file `.vimrc` to `~/.vimrc`
2. Install all system requirements
  ```bash
  sudo apt install build-essential cmake vim-nox python3-dev vim
  sudo apt install mono-complete golang nodejs default-jdk npm
  sudo apt install ack-grep
  ```
  ```
  cd ~/.vim/bundle/YouCompleteMe
  python3 install.py --all
  ```
3. Install plugins in vim by command `:PluginInstall`
