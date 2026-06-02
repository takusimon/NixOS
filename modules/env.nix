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
		    obsidian
		    imagemagick
		    yazi
		    starship
		    killall
		    matugen
		    papirus-icon-theme
		    papirus-folders
		    bibata-cursors
		    devenv
		    xwayland-satellite
		    ];

		    shellAliases = {
		    		 emacs = "emacs -nw";
		    };
		    etc."starship-root.toml".text = ''
add_newline = true

format = """
$time $cmd_duration $directory $git_branch $nix_shell

$username $character"""

[fill]
symbol = '-'
style = 'fg:#7d5a58'

[character]
success_symbol = "[ ](bold fg:#ffb4ab)"
error_symbol = "[ ](bold fg:#ff6b6b)"

[package]
disabled = true

[git_branch]
symbol = "󰘬"
truncation_length = 12
truncation_symbol = ""
format = " [](bold fg:#5b1d1d)[$symbol $branch(:$remote_branch)](bold fg:#ffdad6 bg:#5b1d1d)[ ](bold fg:#5b1d1d)"

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
staged = '[++\($count\)](bold fg:#ffb4ab)'
renamed = " ✍️ "
deleted = " 🗑 "

[nix_shell]
disabled = false
symbol = "󱄅"
impure_msg = "impure"
pure_msg = "pure"
unknown_msg = "shell"

format = ' [](bold fg:#7a2e2e)[$symbol $state( \($name\))](bold bg:#7a2e2e fg:#ffdad6)[](bold fg:#7a2e2e)'

[hostname]
ssh_only = false
format = "[](bold fg:#5b1d1d)[•$hostname](bold bg:#5b1d1d fg:#ffdad6)[](bold fg:#5b1d1d)"
trim_at = ".companyname.com"
disabled = false

[line_break]
disabled = false

[memory_usage]
disabled = true
threshold = -1
symbol = " "
style = "bold fg:#ffb4ab"

[time]
disabled = false
time_format = "%Y-%m-%d %H:%M"
format = '[](bold fg:#8c1d18)[󰃭 $time](bold bg:#8c1d18 fg:#ffdad6)[](bold fg:#8c1d18)'

[username]
disabled = false
show_always = true
format = '[](bold fg:#a12b2b)[ $user](bold bg:#a12b2b fg:#ffdad6)[](bold fg:#a12b2b)'

[directory]
home_symbol = " "
read_only = "  "
style = "bold bg:#2b1616 fg:#f2dede"
truncation_length = 2
truncation_symbol = ".../"
format = '[](bold fg:#2b1616)[󰉋 → $path]($style)[](bold fg:#2b1616)'

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
format = '[](bold fg:#7a2e2e)[󰪢 $duration](bold bg:#7a2e2e fg:#ffdad6)[](bold fg:#7a2e2e)'
'';
    
	};
}