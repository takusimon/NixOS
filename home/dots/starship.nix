{config,pkgs,...}:{
programs.starship = {
 enable = true;
 settings = {
	palette = "noctalia";
	add_newline = true;
	format = ''
$cmd_duration $directory$git_branch
  $character'';
	fill = {
		symbol = "-";
		style = "fg:245";
	};
	character = {
		success_symbol = "[ ](bold fg:243)";
		error_symbol = "[ ](bold fg:244)";
	};
	package = {
		disabled = true;
	};
	git_branch = {
		style = "bg: 252";
		symbol = "󰘬";
		truncation_length = 12;
		truncation_symbol = "";
		format = " 󰜥 [](bold fg:252)[$symbol $branch(:$remote_branch)](fg:235 bg:252)[ ](bold fg:252)";
	};
	git_commit = {
		commit_hash_length = 4;
		tag_symbol = " ";
	};
	git_state = {
		format = "[\($state( $progress_current of $progress_total)\)]($style) ";
		cherry_pick = "[🍒 PICKING](bold red)";
	};
	git_status = {
		conflicted = " 🏳 ";
		ahead = " 🏎💨 ";
		behind = " 😰 ";
		diverged = " 😵 ";
		untracked = " 🤷 ‍";
		stashed = " 📦 ";
		modified = " 📝 ";
		staged = "[++\($count\)](green)";
		renamed = " ✍️ ";
		deleted = " 🗑 ";
	};
	hostname = {
		ssh_only = false;
		format = "[•$hostname](bg:252 bold fg:235)[](bold fg:252)";
		trim_at = ".companyname.com";
		disabled = false;
	};
	line_break = {
		disabled = false;
	};
	memory_usage = {
		disabled = true;
		threshold = -1;
		symbol = " ";
		style = "bold dimmed green";
	};
	time = {
		disabled = true;
		format = "🕙[\[ $time \]]($style) ";
		time_format = "%T";
	};
	username = {
		style_user = "bold bg:252 fg:235";
		style_root = "red bold";
		format = "[](bold fg:252)[$user]($style)";
		disabled = false;
		show_always = true;
	};
	directory = {
		home_symbol = " ";
		read_only = "  ";
		style = "bg:255 fg:240";
		truncation_length = 2;
		truncation_symbol = ".../";
		format = "[](bold fg:255)[󰉋 → $path]($style)[](bold fg:255)";
		substitutions = {
			Desktop = "  ";
			Documents = "  ";
			Downloads = "  ";
			Music = " 󰎈 ";
			Pictures = "  ";
			Videos = "  ";
			GitHub = " 󰊤 ";
		};
	};
	cmd_duration = {
		min_time = 0;
		format = "[](bold fg:252)[󰪢 $duration](bold bg:252 fg:235)[](bold fg:252)";
	};
	palettes = {
		noctalia = {
			blue = "#ffb4a5";
			red = "#ffb4ab";
			green = "#fab6a8";
			yellow = "#ffb94e";
			cyan = "#fab6a8";
			magenta = "#ffb4a5";
			white = "#f2deda";
			black = "#1b110f";
			rosewater = "#ffb94e";
			flamingo = "#ffb94e";
			pink = "#ffb4a5";
			mauve = "#a13f2c";
			maroon = "#ffb4ab";
			peach = "#ffb94e";
			teal = "#fab6a8";
			sky = "#fab6a8";
			sapphire = "#fab6a8";
			lavender = "#a13f2c";
			text = "#f2deda";
			subtext1 = "#ddc0ba";
			subtext0 = "#a58b86";
			overlay2 = "#a58b86";
			overlay1 = "#ddc0ba";
			overlay0 = "#56423e";
			surface2 = "#56423e";
			surface1 = "#1b110f";
			surface0 = "#1b110f";
			base = "#1b110f";
			mantle = "#1b110f";
			crust = "#452b00";
		};
	};
};
};
}