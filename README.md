# How to install VIM configuration
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

# How to instal NEOVIM configuration

## Prerequisites
- NeoVim
- git (for downloading plugins)
- Python 3.13
- Flake8 and Black (optional, for ALE linting and formatting tools)
## Installing NeoVim
Before you can begin configuring NeoVim, you need to have it installed on your system. You can install NeoVim using your system's package manager or by downloading it from the [official website](https://neovim.io/).
For example, for Ubuntu-based systems, you can use the following command:
```bash
sudo apt update
sudo apt install neovim
```
For other systems, please refer to the NeoVim [installation guide](https://github.com/neovim/neovim/wiki/Installing-Neovim) for specific instructions.
## Installing vim-plug Plugin Manager
1. Download and install vim-plug by running the following command in your terminal:
   
```bash
   curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
   
## Configuring NeoVim
1. Create or open your NeoVim configuration file using this command:
   
```bash
   nvim ~/.config/nvim/init.vim
```
   
2. Copy and paste the above configuration into your opened init.vim file.
3. After pasting, save the changes and close the editor (:wq in normal mode).
## Installing Plugins
1. Open NeoVim by typing:
   
```bash
   nvim
```
   
2. In NeoVim, run the command :PlugInstall to install all the plugins listed in the configuration file.
3. Once the installation is complete, the plugins should be active. You may need to close and reopen NeoVim to apply all changes.
## Additional Steps
- Ensure that you have Python 3.13 installed on your system, and the path to the interpreter (/usr/bin/python3.13) is correct in the configuration.
- If you want to use flake8 and black through ALE:
  - Install flake8:
    
```bash
    pip install flake8
```    
  - Install black:
    
```bash
    pip install black
```
    
After completing these steps, your NeoVim editor environment should be ready to use with the recommended configuration. Remember that you can customize the init.vim file to suit your own needs by adding or removing plugins and tweaking settings.
