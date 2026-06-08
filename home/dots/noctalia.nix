{config,pkgs,inputs,...}:{
	imports = [ inputs.noctalia.homeModules.default];
	programs.noctalia = {
	enable = true;
	settings = {
	settingsVersion = 59;
	appLauncher = {
		autoPasteClipboard = false;
		clipboardWatchImageCommand = "wl-paste --type image --watch cliphist store";
		clipboardWatchTextCommand = "wl-paste --type text --watch cliphist store";
		clipboardWrapText = true;
		customLaunchPrefix = "";
		customLaunchPrefixEnabled = false;
		density = "default";
		enableClipPreview = true;
		enableClipboardChips = true;
		enableClipboardHistory = true;
		enableClipboardSmartIcons = true;
		enableSessionSearch = true;
		enableSettingsSearch = true;
		enableWindowsSearch = true;
		iconMode = "tabler";
		ignoreMouseInput = false;
		overviewLayer = false;
		pinnedApps = [  ];
		position = "center";
		screenshotAnnotationTool = "";
		showCategories = true;
		showIconBackground = false;
		sortByMostUsed = true;
		terminalCommand = "alacritty -e";
		viewMode = "grid";
	};
	audio = {
		mprisBlacklist = [  ];
		preferredPlayer = "";
		spectrumFrameRate = 30;
		spectrumMirrored = true;
		visualizerType = "linear";
		volumeFeedback = false;
		volumeFeedbackSoundFile = "";
		volumeOverdrive = false;
		volumeStep = 5;
	};
	bar = {
		autoHideDelay = 500;
		autoShowDelay = 150;
		backgroundOpacity = 0.93;
		barType = "framed";
		capsuleColorKey = "none";
		capsuleOpacity = 1;
		contentPadding = 2;
		density = "default";
		displayMode = "always_visible";
		enableExclusionZoneInset = true;
		fontScale = 1;
		frameRadius = 12;
		frameThickness = 8;
		hideOnOverview = false;
		marginHorizontal = 4;
		marginVertical = 4;
		middleClickAction = "none";
		middleClickCommand = "";
		middleClickFollowMouse = false;
		monitors = [  ];
		mouseWheelAction = "none";
		mouseWheelWrap = true;
		outerCorners = true;
		position = "bottom";
		reverseScroll = false;
		rightClickAction = "controlCenter";
		rightClickCommand = "";
		rightClickFollowMouse = true;
		screenOverrides = [  ];
		showCapsule = true;
		showOnWorkspaceSwitch = true;
		showOutline = false;
		useSeparateOpacity = false;
		widgetSpacing = 6;
		widgets = {
			background_opacity = 0.3399999924004078;
			capsule = true;
			center = [ "ram" "date" "cpu" ];
			end = [ "tray" "notifications" "clipboard" "network" "bluetooth" "volume" "brightness" "battery" "control-center" "session" ];
			start = [ "launcher" "workspaces" ];
			left = [ {
				colorizeSystemIcon = "none";
				colorizeSystemText = "none";
				customIconPath = "";
				enableColorization = false;
				icon = "rocket";
				iconColor = "none";
				id = "Launcher";
				useDistroLogo = false;
			} {
				clockColor = "none";
				customFont = "";
				formatHorizontal = "HH:mm ddd, MMM dd";
				formatVertical = "HH mm - dd MM";
				id = "Clock";
				tooltipFormat = "HH:mm ddd, MMM dd";
				useCustomFont = false;
			} {
				compactMode = true;
				diskPath = "/";
				iconColor = "none";
				id = "SystemMonitor";
				showCpuCores = false;
				showCpuFreq = false;
				showCpuTemp = true;
				showCpuUsage = true;
				showDiskAvailable = false;
				showDiskUsage = false;
				showDiskUsageAsPercent = false;
				showGpuTemp = false;
				showLoadAverage = false;
				showMemoryAsPercent = false;
				showMemoryUsage = true;
				showNetworkStats = false;
				showSwapUsage = false;
				textColor = "none";
				useMonospaceFont = true;
				usePadding = false;
			} {
				colorizeIcons = false;
				hideMode = "hidden";
				id = "ActiveWindow";
				maxWidth = 145;
				scrollingMode = "hover";
				showIcon = true;
				showText = true;
				textColor = "none";
				useFixedWidth = false;
			} {
				compactMode = false;
				hideMode = "hidden";
				hideWhenIdle = false;
				id = "MediaMini";
				maxWidth = 145;
				panelShowAlbumArt = true;
				scrollingMode = "hover";
				showAlbumArt = true;
				showArtistFirst = true;
				showProgressRing = true;
				showVisualizer = false;
				textColor = "none";
				useFixedWidth = false;
				visualizerType = "linear";
			} ];
			right = [ {
				blacklist = [  ];
				chevronColor = "none";
				colorizeIcons = false;
				drawerEnabled = false;
				hidePassive = false;
				id = "Tray";
				pinned = [  ];
			} {
				displayMode = "onhover";
				iconColor = "none";
				id = "Network";
				textColor = "none";
			} {
				hideWhenZero = false;
				hideWhenZeroUnread = false;
				iconColor = "none";
				id = "NotificationHistory";
				showUnreadBadge = true;
				unreadBadgeColor = "primary";
			} {
				deviceNativePath = "__default__";
				displayMode = "graphic";
				hideIfIdle = false;
				hideIfNotDetected = true;
				id = "Battery";
				showNoctaliaPerformance = false;
				showPowerProfiles = false;
			} {
				displayMode = "onhover";
				iconColor = "none";
				id = "Volume";
				middleClickCommand = "pwvucontrol || pavucontrol";
				textColor = "none";
			} {
				applyToAllMonitors = false;
				displayMode = "onhover";
				iconColor = "none";
				id = "Brightness";
				textColor = "none";
			} {
				colorizeDistroLogo = false;
				colorizeSystemIcon = "none";
				colorizeSystemText = "none";
				customIconPath = "";
				enableColorization = true;
				icon = "noctalia";
				id = "ControlCenter";
				useDistroLogo = true;
			} ];
		};
	};
	brightness = {
		backlightDeviceMappings = [  ];
		brightnessStep = 5;
		enableDdcSupport = false;
		enforceMinimum = true;
	};
	calendar = {
		cards = [ {
			enabled = true;
			id = "calendar-header-card";
		} {
			enabled = true;
			id = "calendar-month-card";
		} {
			enabled = true;
			id = "weather-card";
		} ];
	};
	colorSchemes = {
		darkMode = true;
		generationMethod = "content";
		manualSunrise = "06:30";
		manualSunset = "18:30";
		monitorForColors = "";
		predefinedScheme = "Noctalia (default)";
		schedulingMode = "off";
		syncGsettings = true;
		useWallpaperColors = true;
	};
	controlCenter = {
		diskPath = "/";
		position = "close_to_bar_button";
		shortcuts = {
			left = [ {
				id = "Network";
			} {
				id = "Bluetooth";
			} {
				id = "WallpaperSelector";
			} {
				id = "NoctaliaPerformance";
			} ];
			right = [ {
				id = "Notifications";
			} {
				id = "PowerProfile";
			} {
				id = "KeepAwake";
			} {
				id = "NightLight";
			} ];
		};
		cards = [ {
			enabled = true;
			id = "profile-card";
		} {
			enabled = true;
			id = "shortcuts-card";
		} {
			enabled = true;
			id = "audio-card";
		} {
			enabled = true;
			id = "brightness-card";
		} {
			enabled = true;
			id = "weather-card";
		} {
			enabled = true;
			id = "media-sysmon-card";
		} ];
	};
	desktopWidgets = {
		enabled = false;
		gridSnap = false;
		gridSnapScale = false;
		monitorWidgets = [  ];
		overviewEnabled = true;
	};
	desktop_widgets = {
		schema_version = 2;
		widget_order = [ "desktop-widget-0000000000000002" "desktop-widget-0000000000000003" ];
		grid = {
			cell_size = 16;
			major_interval = 4;
			visible = true;
		};
		widget = {
			desktop-widget-0000000000000002 = {
				box_height = 128.0;
				box_width = 272.0;
				cx = 1704.0;
				cy = 972.0;
				output = "eDP-1";
				rotation = 0.0;
				type = "weather";
			};
			desktop-widget-0000000000000003 = {
				box_height = 288.0;
				box_width = 304.0;
				cx = 1688.0;
				cy = 252.0;
				output = "eDP-1";
				rotation = 0.0;
				type = "sysmon";
				settings = {
					stat2 = "ram_pct";
				};
			};
		};
	};
	dock = {
		animationSpeed = 1;
		backgroundOpacity = 1;
		background_opacity = 0.0;
		colorizeIcons = false;
		deadOpacity = 0.6;
		displayMode = "hidden";
		dockType = "attached";
		enabled = true;
		floatingRatio = 0.52;
		groupApps = true;
		groupClickAction = "cycle";
		groupContextMenuMode = "extended";
		groupIndicatorStyle = "dots";
		inactiveIndicators = false;
		indicatorColor = "primary";
		indicatorOpacity = 0.6;
		indicatorThickness = 3;
		launcherIcon = "";
		launcherIconColor = "none";
		launcherPosition = "end";
		launcherUseDistroLogo = false;
		launcher_icon = "noctalia";
		launcher_position = "start";
		monitors = [  ];
		onlySameOutput = true;
		pinned = [ "discord" "google-chrome" "kitty" "obsidian" "code" "org.gnome.Nautilus" ];
		pinnedApps = [ "google-chrome" "kitty" ];
		pinnedStatic = true;
		position = "bottom";
		radius = 10;
		showDockIndicator = false;
		showLauncherIcon = false;
		sitOnFrame = true;
		size = 0.95;
	};
	general = {
		allowPanelsOnScreenWithoutBar = true;
		allowPasswordWithFprintd = false;
		animationDisabled = false;
		animationSpeed = 1;
		autoStartAuth = false;
		avatarImage = "/home/taku/NixOS/home/wallpapers/spiderman.png";
		boxRadiusRatio = 1;
		clockFormat = "hh\nmm";
		clockStyle = "custom";
		compactLockScreen = false;
		dimmerOpacity = 0.2;
		enableBlurBehind = true;
		enableLockScreenCountdown = true;
		enableLockScreenMediaControls = false;
		enableShadows = true;
		forceBlackScreenCorners = false;
		iRadiusRatio = 1;
		language = "";
		lockOnSuspend = true;
		lockScreenAnimations = false;
		lockScreenBlur = 0;
		lockScreenCountdownDuration = 10000;
		lockScreenMonitors = [  ];
		lockScreenTint = 0;
		passwordChars = false;
		radiusRatio = 1;
		reverseScroll = false;
		scaleRatio = 1;
		screenRadiusRatio = 1;
		shadowDirection = "bottom_right";
		shadowOffsetX = 2;
		shadowOffsetY = 3;
		showChangelogOnStartup = false;
		showHibernateOnLockScreen = false;
		showScreenCorners = false;
		showSessionButtonsOnLockScreen = true;
		smoothScrollEnabled = true;
		telemetryEnabled = false;
		keybinds = {
			keyDown = [ "Down" ];
			keyEnter = [ "Return" "Enter" ];
			keyEscape = [ "Esc" ];
			keyLeft = [ "Left" ];
			keyRemove = [ "Del" ];
			keyRight = [ "Right" ];
			keyUp = [ "Up" ];
		};
	};
	hooks = {
		colorGeneration = "";
		darkModeChange = "";
		enabled = false;
		performanceModeDisabled = "";
		performanceModeEnabled = "";
		screenLock = "";
		screenUnlock = "";
		session = "";
		startup = "";
		wallpaperChange = "";
	};
	idle = {
		behavior_order = [ "lock" "screen-off" "lock-and-suspend" ];
		customCommands = "[]";
		enabled = true;
		fadeDuration = 5;
		lockCommand = "";
		lockTimeout = 660;
		pre_action_fade_seconds = 30;
		resumeLockCommand = "";
		resumeScreenOffCommand = "";
		resumeSuspendCommand = "";
		screenOffCommand = "";
		screenOffTimeout = 600;
		suspendCommand = "";
		suspendTimeout = 1800;
		behavior = {
			lock = {
				action = "lock";
				enabled = true;
				timeout = 120;
			};
			lock-and-suspend = {
				action = "suspend";
				enabled = true;
				lock_before_suspend = false;
				timeout = 600;
			};
			screen-off = {
				action = "screen_off";
				enabled = true;
				timeout = 60;
			};
		};
	};
	location = {
		WeatherCityName = false;
		analogClockInCalendar = false;
		autoLocate = true;
		auto_locate = true;
		firstDayOfWeek = -1;
		hideWeatherTimezone = false;
		name = "";
		showCalendarEvents = true;
		showCalendarWeather = true;
		showWeekNumberInCalendar = true;
		use12hourFormat = false;
		useFahrenheit = true;
		weatherEnabled = true;
		weatherShowEffects = true;
		weatherTaliaMascotAlways = false;
	};
	lockscreen_widgets = {
		enabled = true;
		schema_version = 2;
		widget_order = [ "lockscreen-login-box@eDP-1" "lockscreen-widget-0000000000000001" "lockscreen-widget-0000000000000002" ];
		grid = {
			cell_size = 16;
			major_interval = 4;
			visible = true;
		};
		widget = {
			"lockscreen-login-box@eDP-1" = {
				box_height = 0.0;
				box_width = 0.0;
				cx = 960.0;
				cy = 957.0;
				output = "eDP-1";
				rotation = 0.0;
				type = "login_box";
			};
			lockscreen-widget-0000000000000001 = {
				box_height = 112.0;
				box_width = 480.0;
				cx = 976.0;
				cy = 204.0;
				output = "eDP-1";
				rotation = 0.0;
				type = "clock";
			};
			lockscreen-widget-0000000000000002 = {
				box_height = 128.0;
				box_width = 320.0;
				cx = 352.0;
				cy = 524.0;
				output = "eDP-1";
				rotation = 0.0;
				type = "weather";
			};
		};
	};
	network = {
		bluetoothAutoConnect = true;
		bluetoothDetailsViewMode = "grid";
		bluetoothHideUnnamedDevices = false;
		bluetoothRssiPollIntervalMs = 60000;
		bluetoothRssiPollingEnabled = false;
		disableDiscoverability = false;
		networkPanelView = "wifi";
		wifiDetailsViewMode = "grid";
	};
	nightLight = {
		autoSchedule = true;
		dayTemp = "6500";
		enabled = false;
		forced = false;
		manualSunrise = "06:30";
		manualSunset = "18:30";
		nightTemp = "4000";
	};
	noctaliaPerformance = {
		disableDesktopWidgets = true;
		disableWallpaper = true;
	};
	notification = {
		background_opacity = 0.3499999921768904;
	};
	notifications = {
		backgroundOpacity = 1;
		clearDismissed = true;
		criticalUrgencyDuration = 15;
		density = "default";
		enableBatteryToast = true;
		enableKeyboardLayoutToast = true;
		enableMarkdown = false;
		enableMediaToast = false;
		enabled = true;
		location = "top_right";
		lowUrgencyDuration = 3;
		monitors = [  ];
		normalUrgencyDuration = 8;
		overlayLayer = true;
		respectExpireTimeout = false;
		saveToHistory = {
			critical = true;
			low = true;
			normal = true;
		};
		sounds = {
			criticalSoundFile = "";
			enabled = false;
			excludedApps = "discord,firefox,chrome,chromium,edge";
			lowSoundFile = "";
			normalSoundFile = "";
			separateSounds = false;
			volume = 0.5;
		};
	};
	osd = {
		autoHideMs = 2000;
		backgroundOpacity = 1;
		enabled = true;
		enabledTypes = [ 0 1 2 ];
		location = "top_right";
		monitors = [  ];
		overlayLayer = true;
	};
	plugins = {
		autoUpdate = false;
		notifyUpdates = true;
	};
	sessionMenu = {
		countdownDuration = 10000;
		enableCountdown = true;
		largeButtonsLayout = "single-row";
		largeButtonsStyle = true;
		position = "center";
		showHeader = true;
		showKeybinds = true;
		powerOptions = [ {
			action = "lock";
			command = "";
			countdownEnabled = true;
			enabled = true;
			keybind = "1";
		} {
			action = "suspend";
			command = "";
			countdownEnabled = true;
			enabled = true;
			keybind = "2";
		} {
			action = "hibernate";
			command = "";
			countdownEnabled = true;
			enabled = true;
			keybind = "3";
		} {
			action = "reboot";
			command = "";
			countdownEnabled = true;
			enabled = true;
			keybind = "4";
		} {
			action = "logout";
			command = "";
			countdownEnabled = true;
			enabled = true;
			keybind = "5";
		} {
			action = "shutdown";
			command = "";
			countdownEnabled = true;
			enabled = true;
			keybind = "6";
		} {
			action = "rebootToUefi";
			command = "";
			countdownEnabled = true;
			enabled = true;
			keybind = "7";
		} {
			action = "userspaceReboot";
			command = "";
			countdownEnabled = true;
			enabled = false;
			keybind = "";
		} ];
	};
	shell = {
		avatar_path = "/home/taku/NixOS/home/wallpapers/spiderman.png";
		clipboard_confirm_clear_history = false;
		font_family = "JetBrainsMono NFP";
		launch_apps_as_systemd_services = true;
		password_style = "random";
		polkit_agent = true;
		settings_show_advanced = true;
		panel = {
			clipboard_placement = "floating";
			control_center_placement = "floating";
			launcher_placement = "floating";
			session_placement = "floating";
			transparency_mode = "glass";
			wallpaper_placement = "floating";
		};
		screenshot = {
			save_to_file = false;
		};
	};
	systemMonitor = {
		batteryCriticalThreshold = 5;
		batteryWarningThreshold = 20;
		cpuCriticalThreshold = 90;
		cpuWarningThreshold = 80;
		criticalColor = "";
		diskAvailCriticalThreshold = 10;
		diskAvailWarningThreshold = 20;
		diskCriticalThreshold = 90;
		diskWarningThreshold = 80;
		enableDgpuMonitoring = false;
		externalMonitor = "resources || missioncenter || jdsystemmonitor || corestats || system-monitoring-center || gnome-system-monitor || plasma-systemmonitor || mate-system-monitor || ukui-system-monitor || deepin-system-monitor || pantheon-system-monitor";
		gpuCriticalThreshold = 90;
		gpuWarningThreshold = 80;
		memCriticalThreshold = 90;
		memWarningThreshold = 80;
		swapCriticalThreshold = 90;
		swapWarningThreshold = 80;
		tempCriticalThreshold = 90;
		tempWarningThreshold = 80;
		useCustomColors = false;
		warningColor = "";
	};
	templates = {
		enableUserTheming = false;
		activeTemplates = [ {
			enabled = true;
			id = "discord";
		} {
			enabled = true;
			id = "btop";
		} {
			enable = true;
			id = "emacs";
		} {
			enabled = true;
			id = "gtk";
		} {
			enabled = true;
			id = "kitty";
		} {
			enabled = true;
			id = "niri";
		} {
			enabled = true;
			id = "qt";
		} {
			enabled = true;
			id = "starship";
		} {
			enabled = true;
			id = "steam";
		} {
			enabled = true;
			id = "code";
		} {
			enabled = true;
			id = "yazi";
		} ];
	};
	theme = {
		source = "wallpaper";
		templates = {
			builtin_ids = [ "btop" "cava" "emacs" "gtk4" "kitty" "niri" "qt" "starship" ];
			community_ids = [ "obsidian" "vscode" "discord" "papirus-icons" "steam" "yazi" ];
		};
	};
	ui = {
		boxBorderEnabled = false;
		fontDefault = "Sans Serif";
		fontDefaultScale = 1;
		fontFixed = "monospace";
		fontFixedScale = 1;
		panelBackgroundOpacity = 0.93;
		panelsAttachedToBar = true;
		scrollbarAlwaysVisible = true;
		settingsPanelMode = "attached";
		settingsPanelSideBarCardStyle = false;
		tooltipsEnabled = true;
		translucentWidgets = false;
	};
	wallpaper = {
		automationEnabled = false;
		directory = "/home/taku/NixOS/home/wallpapers";
		enableMultiMonitorDirectories = false;
		enabled = true;
		favorites = [  ];
		fillColor = "#000000";
		fillMode = "crop";
		hideWallpaperFilenames = false;
		linkLightAndDarkWallpapers = true;
		monitorDirectories = [  ];
		overviewBlur = 0.4;
		overviewEnabled = false;
		overviewTint = 0.6;
		panelPosition = "follow_bar";
		randomIntervalSec = 300;
		setWallpaperOnAllMonitors = true;
		showHiddenFiles = false;
		skipStartupTransition = false;
		solidColor = "#1a1a2e";
		sortOrder = "name";
		transitionDuration = 1500;
		transitionEdgeSmoothness = 0.05;
		transitionType = [ "fade" "disc" "stripes" "wipe" "pixelate" "honeycomb" ];
		useOriginalImages = false;
		useSolidColor = false;
		useWallhaven = false;
		viewMode = "recursive";
		wallhavenApiKey = "";
		wallhavenCategories = "111";
		wallhavenOrder = "desc";
		wallhavenPurity = "100";
		wallhavenQuery = "";
		wallhavenRatios = "";
		wallhavenResolutionHeight = "";
		wallhavenResolutionMode = "atleast";
		wallhavenResolutionWidth = "";
		wallhavenSorting = "relevance";
		wallpaperChangeMode = "random";
		automation = {
			enabled = true;
		};
		default = {
			path = "/home/taku/NixOS/home/wallpapers/spiderman.png";
		};
		last = {
			path = "/home/taku/NixOS/home/wallpapers/spiderman.png";
		};
		monitors = {
			eDP-1 = {
				path = "/home/taku/NixOS/home/wallpapers/spiderman.png";
			};
		};
	};
	weather = {
		unit = "imperial";
	};
	widget = {
		date = {
			format = "%H:%M:%S %a %b %-d";
		};
	};
};
};
}
