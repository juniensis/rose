{
  plugins.neo-tree = {
    enable = true;
    autoLoad = true;
    settings = {
      filesystem = {
        hijackNetrwBehavior = "open_default";
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree toggle reveal_force_cwd<cr>";
      options = {
        desc = "Toggle Neo-tree";
        silent = true;
      };
    }
  ];
}
