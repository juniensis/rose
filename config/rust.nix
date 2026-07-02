{
  plugins = {
    rustaceanvim = {
      enable = true;
    };
    crates = {
      enable = true;
      settings = {
        lsp = {
          enabled = true;
          completion = true;
          actions = true;
          hover = true;
        };
        completion.crates.enabled = true;
      };
    };
  };
}
