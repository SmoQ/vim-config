# README

## Introduction

This is a Neovim configuration file optimized for Python development, featuring a selection of useful plugins and custom settings. The setup uses [vim-plug](https://github.com/junegunn/vim-plug) for managing plugins and includes tools such as NERDTree for file browsing, ALE for linting and auto-formatting, and Telescope for fuzzy finding.

## Prerequisites

- **Neovim**: Ensure Neovim is installed.
- **Python 3**: Ensure Python 3 is installed, specifically version 3.13 in this configuration.
- **ripgrep**: Required for Telescope. Installation instructions are provided below.

## Installation

### Install Neovim

#### Method 1: Installation from Neovim Repository

To install the latest version of Neovim on Ubuntu, follow these steps:

1. **Add the Neovim repository:**

   ```bash
   sudo apt update
   sudo apt install software-properties-common
   sudo add-apt-repository ppa:neovim-ppa/stable
   ```

2. **Install Neovim:**

   ```bash
   sudo apt update
   sudo apt install neovim
   ```

Alternatively, follow the [official Neovim installation guide](https://neovim.io/#install) for other methods or distributions.

### Install ripgrep

To use Telescope effectively, you need to install `ripgrep`. Here’s how to do it based on your operating system:

#### On Ubuntu/Debian

```bash
sudo apt-get update
sudo apt-get install ripgrep
```

#### On macOS

```bash
brew install ripgrep
```

#### On Windows

Download the latest release of `ripgrep` from the [GitHub releases page](https://github.com/BurntSushi/ripgrep/releases) and add it to your PATH.

### Install vim-plug

1. **Download `vim-plug`:**

   ```bash
   curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```

2. **Create a Neovim configuration directory:**

   ```bash
   mkdir -p ~/.config/nvim
   ```

3. **Create or edit the `init.vim` file:**

   ```bash
   nano ~/.config/nvim/init.vim
   ```

4. **Paste the configuration provided below into your `init.vim` file.**

### Configuration

Paste the following configuration into your `init.vim` file.

### Install Plugins

1. **Open Neovim:**

   ```bash
   nvim
   ```

2. **Install the plugins:**

   ```vim
   :PlugInstall
   ```

## Usage

- **NERDTree**: Press `<F3>` to toggle the file explorer.
- **Telescope**:
  - Press `<leader>ff` to find files.
  - Press `<leader>fg` to perform a live grep.
  - Press `<leader>fb` to list buffers.
  - Press `<leader>fh` to view help tags.
- **ALE**: Automatically lints and formats Python code using `flake8` and `black`.

## License

This configuration is provided as-is and is free to use and modify under the [MIT License](https://opensource.org/licenses/MIT).

## Troubleshooting

If you encounter issues, verify that all dependencies are correctly installed and check for typos or configuration errors in your `init.vim`. For plugin-specific problems, consult the respective plugin documentation.
