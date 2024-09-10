{
  colorschemes = {
    catppuccin = {
      enable = false;

      settings = {
        flavour = "mocha";

        # Needed to keep terminal transparency, if any
        transparent_background = false;
      };
    };
    vscode = {
      enable = true;
      settings = {
        transparent = true;
        italics_comments = true;
        disable_nvimtree_bg = true;
      }
    };
  };
}
