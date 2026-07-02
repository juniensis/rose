{ pkgs, lib, ... }:
{
  imports = [
    ./lsp/clangd.nix
    ./lsp/conform.nix
    ./lsp/lsp.nix
    ./web-devicons.nix
    ./snacks.nix
    ./neotree.nix
    ./colorschemes.nix
    ./keymaps.nix
    ./ui.nix
    ./mini.nix
    ./treesitter.nix
    ./ts-comments.nix
    ./blink.nix
    ./rust.nix
    ./clipboard.nix
  ];

  config = {
    globals = {
      mapleader = " ";
    };

    opts = {
      number = true;
      # colorcolumn = "80";
      relativenumber = true;
      shiftwidth = 2;
      tabstop = 2;
      wrap = false;
      swapfile = false;
      backup = false;
      undofile = true;
      hlsearch = false;
      incsearch = true;
      termguicolors = true;
      scrolloff = 8;
      signcolumn = "yes";
      updatetime = 50;
      foldlevelstart = 99;
    };

    extraPackages = with pkgs; [
      nerd-fonts.fantasque-sans-mono
      fzf
      ripgrep
      fd
      stylua
      nixfmt
      gcc
    ];

    globals = {
      loaded_netrw = 1;
      loaded_netrwPlugin = 1;
    };
  };
}
