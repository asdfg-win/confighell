{ pkgs , ...  }:
let
  packages_included = with pkgs; [
    tmux
    htop
    vim
    zsh
    # Below is for utilities to create keys 
    gnupg
    gpg-tui
    # password manager
    pass
    # Some more things
    jq
    oci-cli
    # Development
    #cargo
    #rustc
    lua
  ];
  shell_hook_script = "\n";
in pkgs.mkShell {
  packages = packages_included;
  shellHook = shell_hook_script;
}
