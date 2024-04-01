# Default configuration file for tmux-powerline.
# Modeline {
	 vi: foldmarker={,} foldmethod=marker foldlevel=0 tabstop=4 filetype=sh
# }

# General {
	# Show which segment fails and its exit code.
	export TMUX_POWERLINE_DEBUG_MODE_ENABLED="false"
	# Use patched font symbols.
	export TMUX_POWERLINE_PATCHED_FONT_IN_USE="true"

	# The theme to use.
	export TMUX_POWERLINE_THEME="default"
	# Overlay directory to look for themes. There you can put your own themes outside the repo. Fallback will still be the "themes" directory in the repo.
	export TMUX_POWERLINE_DIR_USER_THEMES="${XDG_CONFIG_HOME:-$HOME/.config}/tmux-powerline/themes"
	# Overlay directory to look for segments. There you can put your own segments outside the repo. Fallback will still be the "segments" directory in the repo.
	export TMUX_POWERLINE_DIR_USER_SEGMENTS="${XDG_CONFIG_HOME:-$HOME/.config}/tmux-powerline/segments"

	# The initial visibility of the status bar. Can be {"on", "off", "2"}. 2 will create two status lines: one for the window list and one with status bar segments. 
	export TMUX_POWERLINE_STATUS_VISIBILITY="on"
	# In case of visibility = 2, where to display window status and where left/right status bars.
	# 0: window status top, left/right status bottom; 1: window status bottom, left/right status top
	export TMUX_POWERLINE_WINDOW_STATUS_LINE=0
	# The status bar refresh interval in seconds.
	# Note that events that force-refresh the status bar (such as window renaming) will ignore this.
	export TMUX_POWERLINE_STATUS_INTERVAL="1"
	# The location of the window list. Can be {"absolute-centre, centre, left, right"}.
	# Note that "absolute-centre" is only supported on `tmux -V` >= 3.2.
	export TMUX_POWERLINE_STATUS_JUSTIFICATION="centre"

	# The maximum length of the left status bar.
	export TMUX_POWERLINE_STATUS_LEFT_LENGTH="60"
	# The maximum length of the right status bar.
	export TMUX_POWERLINE_STATUS_RIGHT_LENGTH="90"

	# The separator to use between windows on the status bar.
	export TMUX_POWERLINE_WINDOW_STATUS_SEPARATOR=""

	# Uncomment these if you want to enable tmux bindings for muting (hiding) one of the status bars.
	# E.g. this example binding would mute the left status bar when pressing <prefix> followed by Ctrl-[
	#export TMUX_POWERLINE_MUTE_LEFT_KEYBINDING="C-["
	#export TMUX_POWERLINE_MUTE_RIGHT_KEYBINDING="C-]"
# }

# battery.sh {
	# How to display battery remaining. Can be {percentage, cute}.
	export TMUX_POWERLINE_SEG_BATTERY_TYPE="percentage"
# }

# date.sh {
	# date(1) format for the date. If you don't, for some reason, like ISO 8601 format you might want to have "%D" or "%m/%d/%Y".
	export TMUX_POWERLINE_SEG_DATE_FORMAT="%F"
# }


# hostname.sh {
	# Use short or long format for the hostname. Can be {"short, long"}.
	export TMUX_POWERLINE_SEG_HOSTNAME_FORMAT="short"
# }

# mode_indicator.sh {
	# Whether the normal & prefix mode section should be enabled. Should be {"true, "false"}.
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_NORMAL_AND_PREFIX_MODE_ENABLED="true"
	# Normal mode text & color overrides. Defaults to "normal" & the segment foreground color set in the theme used.
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_NORMAL_MODE_TEXT="normal"
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_NORMAL_MODE_TEXT_COLOR=""
	# Prefix mode text & color overrides. Defaults to "prefix" & the segment foreground color set in the theme used.
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_PREFIX_MODE_TEXT="prefix"
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_PREFIX_MODE_TEXT_COLOR=""
	# Whether the mouse mode section should be enabled. Should be {"true, "false"}.
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_MOUSE_MODE_ENABLED="true"
	# Mouse mode text & color overrides. Defaults to "mouse" & the segment foreground color set in the theme used.
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_MOUSE_MODE_TEXT="mouse"
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_MOUSE_MODE_TEXT_COLOR=""
	# Whether the copy mode section should be enabled. Should be {"true, "false"}.
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_COPY_MODE_ENABLED="true"
	# Copy mode text & color overrides. Defaults to "copy" & the segment foreground color set in the theme used.
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_COPY_MODE_TEXT="copy"
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_COPY_MODE_TEXT_COLOR=""
	# Suspend mode text & color overrides. Defaults to "SUSPEND" & the segment foreground color set in the theme used.
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_SUSPEND_MODE_TEXT="SUSPEND"
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_SUSPEND_MODE_TEXT_COLOR=""
	# Separator text override. Defaults to " • ".
	export TMUX_POWERLINE_SEG_MODE_INDICATOR_SEPARATOR_TEXT=" • "
# }

# now_playing.sh {
	export TMUX_POWERLINE_SEG_NOW_PLAYING_MUSIC_PLAYER="spotify"
	# Maximum output length.
	export TMUX_POWERLINE_SEG_NOW_PLAYING_MAX_LEN="40"
	# How to handle too long strings. Can be {trim, roll}.
	export TMUX_POWERLINE_SEG_NOW_PLAYING_TRIM_METHOD="trim"
	# Charcters per second to roll if rolling trim method is used.
	export TMUX_POWERLINE_SEG_NOW_PLAYING_ROLL_SPEED="2"
	
# }

# pwd.sh {
	# Maximum length of output.
	export TMUX_POWERLINE_SEG_PWD_MAX_LEN="40"
# }

# time.sh {
	# date(1) format for the time. Americans might want to have "%I:%M %p".
	export TMUX_POWERLINE_SEG_TIME_FORMAT="%H:%M"
# }


# tmux_session_info.sh {
	# Session info format to feed into the command: tmux display-message -p
	# For example, if FORMAT is '[ #S ]', the command is: tmux display-message -p '[ #S ]'
	export TMUX_POWERLINE_SEG_TMUX_SESSION_INFO_FORMAT="#S:#I.#P"
# }

# utc_time.sh {
	# date(1) format for the UTC time.
	export TMUX_POWERLINE_SEG_UTC_TIME_FORMAT="%H:%M %Z"
# }

# weather.sh {
	# The data provider to use. Currently only "yahoo" is supported.
	export TMUX_POWERLINE_SEG_WEATHER_DATA_PROVIDER="yrno"
	# What unit to use. Can be any of {c,f,k}.
	export TMUX_POWERLINE_SEG_WEATHER_UNIT="c"
	# How often to update the weather in seconds.
	export TMUX_POWERLINE_SEG_WEATHER_UPDATE_PERIOD="600"
	# Name of GNU grep binary if in PATH, or path to it.
	export TMUX_POWERLINE_SEG_WEATHER_GREP="grep"
	# Location of the JSON parser, jq
	export TMUX_POWERLINE_SEG_WEATHER_JSON="jq"
	# Your location
	# Latitude and Longtitude for use with yr.no
	TMUX_POWERLINE_SEG_WEATHER_LAT="45.438759"
	TMUX_POWERLINE_SEG_WEATHER_LON="12.327145"
# }
