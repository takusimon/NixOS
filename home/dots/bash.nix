{config,pkgs,...}:
{
 programs = {
   bash = {
     enable = true;
     shellAliases = {
       ls = "ls -aFh";
       emacs = "emacs -nw";
       nbs = "sudo nixos-rebuild switch --flake /home/taku/NixOS/#kernelpanic";
       nbb = "sudo nixos-rebuild boot --flake /home/taku/NixOS/#kernelpanic";
       nbt = "sudo nixos-rebuild test --flake /home/taku/NixOS/#kernelpanic";
       add = "git add .";
       cmt = "git commit";
       psh = "git push -u origin main";
     };
     historySize = 10000;
     bashrcExtra = ''
     iatest=$(expr index "$-" i)
     export PATH="$HOME/.local/bin:$PATH"
     
     # Ignore case on auto-completion  
     if [[ $iatest > 0 ]]; then bind "set completion-ignore-case on"; fi
     
     # Show auto-completion list automatically, without double tab 
     if [[ $iatest > 0 ]]; then bind "set show-all-if-ambiguous On"; fi
     eval "$(starship init bash)"

     # Don't put duplicate lines in the history and do not add lines that start with a space
     export HISTCONTROL=erasedups:ignoredups:ignorespace

     # Check the window size after each command and, if necessary, update the values of LINES and COLUMNS
     shopt -s checkwinsize

     # set up XDG folders
     export XDG_DATA_HOME="$HOME/.local/share"
     export XDG_CONFIG_HOME="$HOME/.config"
     export XDG_STATE_HOME="$HOME/.local/state"
     export XDG_CACHE_HOME="$HOME/.cache"
     
     '';
  };
 };
}