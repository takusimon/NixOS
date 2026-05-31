{config,pkgs,...}:{
	# Set Packages available system wide
	# Set system wide Aliases system wide

	environment = {
		    systemPackages = with pkgs; [
		    vim
		    zip
		    unzip
		    git
		    gnutar
		    gnumake
		    gcc
		    ncdu
		    emacs-pgtk
		    clang
		    obsidian
		    imagemagick
		    yazi
		    starship
		    killall
		    matugen
		    papirus-icon-theme
		    papirus-folders
		    bibata-cursors
		    ];

		    shellAliases = {
		    		 emacs = "emacs -nw";
		    };
		    variables = {
		     STARSHIP_CONFIG = "/etc/starship-root.toml";
		    };
		    etc."starship-root.toml".text = ''
		    # Starship + Matugen template
# Adjusted ONLY to better match the kitty palette

add_newline = false

format = """
$time $cmd_duration $directory $git_branch $nix_shell
 $username $character"""

[fill]
symbol = '-'
style = 'fg:#8e9199'

[character]
success_symbol = "[ ](bold fg:#a8c8ff)"
error_symbol = "[ ](bold fg:#ffb4ab)"

[package]
disabled = true

[git_branch]
symbol = "󰘬"
truncation_length = 12
truncation_symbol = ""
format = " [](bold fg:#3d4758)[$symbol $branch(:$remote_branch)](bold fg:#d9e3f8 bg:#3d4758)[ ](bold fg:#3d4758)"

[git_commit]
commit_hash_length = 4
tag_symbol = " "

[git_state]
format = '[\($state( $progress_current of $progress_total)\)](bold fg:#ffb4ab) '
cherry_pick = "[🍒 PICKING](bold fg:#ffb4ab)"

[git_status]
conflicted = " 🏳 "
ahead = " 🏎💨 "
behind = " 😰 "
diverged = " 😵 "
untracked = " 🤷 "
stashed = " 📦 "
modified = " 📝 "
staged = '[++\($count\)](bold fg:#a8c8ff)'
renamed = " ✍️ "
deleted = " 🗑 "

[nix_shell]
disabled = false
symbol = "󱄅"
impure_msg = "impure"
pure_msg = "pure"
unknown_msg = "shell"

format = ' [](bold fg:#254777)[$symbol $state( \($name\))](bold bg:#254777 fg:#d5e3ff)[](bold fg:#254777)'

[hostname]
ssh_only = false
format = "[•$hostname](bold bg:#3d4758 fg:#d9e3f8)[](bold fg:#3d4758)"
trim_at = ".companyname.com"
disabled = false

[line_break]
disabled = false

[memory_usage]
disabled = true
threshold = -1
symbol = " "
style = "bold fg:#a8c8ff"

[time]
disabled = false
format = '[](bold fg:#d5e3ff)[󰃭 $time](bold bg:#d5e3ff fg:#111318)[](bold fg:#d5e3ff)'
time_format = "%Y-%m-%d %H:%M"

[username]
style_user = "bold bg:#3d4758 fg:#d9e3f8"
style_root = "bold fg:#ffb4ab"
format = "[](bold fg:#3d4758)[$user]($style)"
disabled = false
show_always = true

[directory]
home_symbol = " "
read_only = "  "
style = "bold bg:#1d2024 fg:#e1e2e9"
truncation_length = 2
truncation_symbol = ".../"
format = '[](bold fg:#1d2024)[󰉋 → $path]($style)[](bold fg:#1d2024)'

[directory.substitutions]
"Desktop" = "  "
"Documents" = "  "
"Downloads" = "  "
"Music" = " 󰎈 "
"Pictures" = "  "
"Videos" = "  "
"GitHub" = " 󰊤 "

[cmd_duration]
min_time = 0
format = '[](bold fg:#254777)[󰪢 $duration](bold bg:#254777 fg:#d5e3ff)[](bold fg:#254777)'
'';
    
	};
}