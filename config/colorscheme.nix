{
  colorschemes = {
    # catppuccin = {
      # enable = false;

      # settings = {
        # flavour = "mocha";

        # Needed to keep terminal transparency, if any
        # transparent_background = false;
      # };
    # };
    vscode = {
      enable = false;
      settings = {
        transparent = true;
        italics_comments = true;
        disable_nvimtree_bg = true;
      };
    };
    nightfox = {
      enable = true;
      flavor = "carbonfox";
      settings = {
        styles = {
          comments = "italic";
          functions = "italic,bold";
        };
        terminal_colors = true;
        transparent = true;
      };
    };
  };
}
