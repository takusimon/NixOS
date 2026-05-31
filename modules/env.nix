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
		    etc."starship-root.toml".text = ''
		    # Starship + Root Theme
# Red-accented root prompt

add_newline = false

format = """
$time $cmd_duration $directory $git_branch $nix_shell

$username $character"""

[fill]
symbol = '-'
style = 'fg:#9c8e80'

[character]
success_symbol = "[ ](bold fg:#f6bc70)"
error_symbol = "[ ](bold fg:#ffb4ab)"

[package]
disabled = true

[git_branch]
symbol = "󰘬"
truncation_length = 12
truncation_symbol = ""
format = " [](bold fg:#57432b)[$symbol $branch(:$remote_branch)](bold fg:#fbdebc bg:#57432b)[ ](bold fg:#57432b)"

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
staged = '[++\($count\)](bold fg:#f6bc70)'
renamed = " ✍️ "
deleted = " 🗑 "

[nix_shell]
disabled = false
symbol = "󱄅"
impure_msg = "impure"
pure_msg = "pure"
unknown_msg = "shell"

format = ' [](bold fg:#643f00)[$symbol $state( \($name\))](bold bg:#643f00 fg:#ffddb5)[](bold fg:#643f00)'

[hostname]
ssh_only = false
format = "[•$hostname](bold bg:#57432b fg:#fbdebc)[](bold fg:#57432b)"
trim_at = ".companyname.com"
disabled = false

[line_break]
disabled = false

[memory_usage]
disabled = true
threshold = -1
symbol = " "
style = "bold fg:#f6bc70"

[time]
disabled = false
format = '[](bold fg:#ffddb5)[󰃭 $time](bold bg:#ffddb5 fg:#18120b)[](bold fg:#ffddb5)'
time_format = "%Y-%m-%d %H:%M"

[username]
disabled = false
show_always = true
format = '[](bold fg:#8c1d18)[ $user](bold bg:#8c1d18 fg:#ffdad6)[](bold fg:#8c1d18)'

[directory]
home_symbol = " "
read_only = "  "
style = "bold bg:#251f17 fg:#ede0d4"
truncation_length = 2
truncation_symbol = ".../"
format = '[](bold fg:#251f17)[󰉋 → $path]($style)[](bold fg:#251f17)'

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
format = '[](bold fg:#643f00)[󰪢 $duration](bold bg:#643f00 fg:#ffddb5)[](bold fg:#643f00)'
'';
    
	};
}