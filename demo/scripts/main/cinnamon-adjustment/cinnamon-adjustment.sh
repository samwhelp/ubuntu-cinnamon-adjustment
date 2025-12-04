#!/usr/bin/env bash


#set -e




##
## ## Link
##
## * https://github.com/samwhelp/ubuntu-cinnamon-adjustment/blob/main/demo/scripts/main/cinnamon-adjustment/cinnamon-adjustment.sh
## * https://raw.githubusercontent.com/samwhelp/ubuntu-cinnamon-adjustment/refs/heads/main/demo/scripts/main/cinnamon-adjustment/cinnamon-adjustment.sh
##




##
## ## Cinnamon / Config / Mouse Button Modifier
##

mod_cinnamon_config_for_mouse_button_modifier () {


	##
	## ## Disable Super_L Open Menu
	##

	## > None


	##
	## ## Mouse Button Modifier
	##

	gsettings set org.cinnamon.desktop.wm.preferences mouse-button-modifier "'<Super>'"

	gsettings set org.cinnamon.desktop.wm.preferences resize-with-right-button true


	return 0
}




##
## ## Cinnamon / Config / Keybind
##

mod_cinnamon_config_for_keybind_main () {


	##
	## ## Fix
	##

	gsettings set org.cinnamon.desktop.keybindings.media-keys home "['XF86Explorer']"

	gsettings set org.cinnamon.desktop.keybindings show-desklets "[]"


	##
	## ## Window
	##

	gsettings set org.cinnamon.desktop.keybindings.wm close "['<Super>q']"

	gsettings set org.cinnamon.desktop.keybindings.wm toggle-maximized "['<Super>w']"

	gsettings set org.cinnamon.desktop.keybindings.wm toggle-fullscreen "['<Super>f']"

	gsettings set org.cinnamon.desktop.keybindings.wm show-desktop "['<Super>d']"

	gsettings set org.cinnamon.desktop.keybindings.wm begin-move "['<Super>e']"

	gsettings set org.cinnamon.desktop.keybindings.wm begin-resize "['<Super>r']"


	##
	## ## Window / Switch
	##

	gsettings set org.cinnamon.desktop.keybindings.wm switch-windows-backward "['<Super>a']"

	gsettings set org.cinnamon.desktop.keybindings.wm switch-windows "['<Super>s']"


	##
	## ## Workspace / Switch
	##

	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-left  "['<Alt>a', '<Control><Alt>Left']"

	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-right  "['<Alt>s', '<Control><Alt>Right']"


	##
	## ## Overview / Switch
	##

	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-up "['<Super>grave', '<Control><Alt>Up']"

	gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-down "['<Super>Tab', '<Control><Alt>Down']"


	##
	## ## Window / Tiling Move
	##

	gsettings set org.cinnamon.desktop.keybindings.wm push-tile-down "['<Super>Down']"

	gsettings set org.cinnamon.desktop.keybindings.wm push-tile-left "['<Super>Left']"

	gsettings set org.cinnamon.desktop.keybindings.wm push-tile-right "['<Super>Right']"

	gsettings set org.cinnamon.desktop.keybindings.wm push-tile-up "['<Super>Up']"


	##
	## ## Screenshot
	##

	gsettings set org.cinnamon.desktop.keybindings.media-keys screenshot "['Print']"

	gsettings set org.cinnamon.desktop.keybindings.media-keys screenshot-clip "['<Shift>Print']"


	##
	## ## Screenshot / Window
	##

	gsettings set org.cinnamon.desktop.keybindings.media-keys window-screenshot "['<Super>Print']"

	gsettings set org.cinnamon.desktop.keybindings.media-keys window-screenshot-clip "['<Alt><Super>Print']"


	##
	## ## Screenshot / Area
	##

	gsettings set org.cinnamon.desktop.keybindings.media-keys area-screenshot "['<Control>Print']"

	gsettings set org.cinnamon.desktop.keybindings.media-keys area-screenshot-clip "['<Alt><Control>Print']"


	return 0
}


mod_cinnamon_config_for_keybind_custom () {


	##
	## ## Clear Old
	##

	dconf reset -f /org/cinnamon/desktop/keybindings/custom-keybindings/




	##
	## ## Keybind Item
	##


	## ### Logout
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/system-logout/name "'System_Logout'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/system-logout/command "'cinnamon-session-quit --logout'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/system-logout/binding "['<Shift><Alt>x']"


	## ### Shutdown
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/system-shutdown/name "'System_Shutdown'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/system-shutdown/command "'cinnamon-session-quit --power-off'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/system-shutdown/binding "['<Shift><Alt>z']"


	## ### System Settings
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/system-settings/name "'System_Settings'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/system-settings/command "'cinnamon-settings'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/system-settings/binding "['<Shift><Alt>s']"


	## ### Terminal
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/terminal/name "'Terminal'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/terminal/command "'gnome-terminal'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/terminal/binding "['<Alt>Return']"


	## ### File Manager
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/file-manager/name "'File_Manager'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/file-manager/command "'nemo'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/file-manager/binding "['<Shift><Alt>f']"


	## ### Text Editor
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/text-editor/name "'Text_Editor'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/text-editor/command "'gedit'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/text-editor/binding "['<Shift><Alt>e']"


	## ### Web Browser
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/web-browser/name "'Web_Browser'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/web-browser/command "'firefox --new-tab about:blank'"
	dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/web-browser/binding "['<Shift><Alt>b']"




	##
	## ## Custom Keybindings
	##

	gsettings set org.cinnamon.desktop.keybindings custom-list "['__dummy__', 'system-logout', 'system-shutdown', 'system-settings', 'terminal', 'file-manager', 'text-editor', 'web-browser']"


	return 0
}




##
## ## Cinnamon / Config / Workspace
##

mod_cinnamon_config_for_workspace () {

	gsettings set org.cinnamon.desktop.wm.preferences num-workspaces 5

	gsettings set org.cinnamon.desktop.wm.preferences workspace-names "['File', 'Edit', 'Web', 'Term', 'Misc']"

	gsettings set org.cinnamon.muffin dynamic-workspaces false

	gsettings set org.cinnamon.muffin workspace-cycle true


	return 0
}




##
## ## Cinnamon / Config / Hot Corner
##

mod_cinnamon_config_for_hotcorner () {

	gsettings set org.cinnamon hotcorner-layout "['expo:true:0', 'gnome-terminal:true:0', 'scale:true:0', 'desktop:true:0']"


	return 0
}




##
## ## Tool / Gnome Terminal / Config
##

mod_tool_gnome_terminal_config () {

	mod_tool_gnome_terminal_config_for_preference

	mod_tool_gnome_terminal_config_for_keybind

	mod_tool_gnome_terminal_config_for_profile


	return 0
}

mod_tool_gnome_terminal_config_for_preference () {

	gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false

	return 0
}

mod_tool_gnome_terminal_config_for_keybind () {


	local path="org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/"


	gsettings set "${path}" zoom-normal '<Control>0'

	gsettings set "${path}" zoom-out '<Control>minus'

	gsettings set "${path}" zoom-in '<Control>equal'


	return 0
}

mod_tool_gnome_terminal_config_for_profile () {


	local profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
	profile=${profile:1:-1} # remove leading and trailing single quotes


	local path="org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/"


	gsettings set "${path}" scrollbar-policy 'never'

	gsettings set "${path}" use-theme-colors false

	gsettings set "${path}" use-theme-transparency false

	gsettings set "${path}" use-transparent-background true

	gsettings set "${path}" background-transparency-percent 15

	#gsettings set "${path}" foreground-color 'rgb(255,255,255)'

	gsettings set "${path}" foreground-color 'rgb(170,170,170)'

	gsettings set "${path}" background-color 'rgb(0,0,0)'

	#gsettings set "${path}" use-theme-transparency false

	#gsettings set "${path}" use-transparent-background true

	#gsettings set "${path}" background-transparency-percent 15

	gsettings set "${path}" visible-name 'Default'

	gsettings set "${path}" use-system-font false

	gsettings set "${path}" font 'Monospace 14'

	gsettings set "${path}" scrollback-unlimited true


	return 0
}




##
## ## Tool / Nemo / Config
##

mod_tool_nemo_config () {


	gsettings set org.nemo.preferences show-hidden-files true

	gsettings set org.nemo.preferences ignore-view-metadata true

	gsettings set org.nemo.preferences default-folder-viewer 'list-view'

	gsettings set org.nemo.desktop font 'Sans 12'




	gsettings set org.nemo.preferences show-open-in-terminal-toolbar true




	#return 0




	gsettings set org.gtk.Settings.FileChooser show-hidden true

	gsettings set org.gtk.gtk4.Settings.FileChooser show-hidden true


	return 0
}




##
## ## Tool / Gedit / Config
##

mod_tool_gedit_config () {


	gsettings set org.gnome.gedit.preferences.editor auto-indent true

	gsettings set org.gnome.gedit.preferences.editor auto-save false

	gsettings set org.gnome.gedit.preferences.editor auto-save-interval 10

	gsettings set org.gnome.gedit.preferences.editor background-pattern 'none'

	gsettings set org.gnome.gedit.preferences.editor bracket-matching true

	gsettings set org.gnome.gedit.preferences.editor create-backup-copy false

	gsettings set org.gnome.gedit.preferences.editor display-line-numbers true

	gsettings set org.gnome.gedit.preferences.editor display-right-margin true

	gsettings set org.gnome.gedit.preferences.editor editor-font 'Monospace 14'

	gsettings set org.gnome.gedit.preferences.editor ensure-trailing-newline true

	gsettings set org.gnome.gedit.preferences.editor highlight-current-line true

	gsettings set org.gnome.gedit.preferences.editor insert-spaces false

	gsettings set org.gnome.gedit.preferences.editor max-undo-actions 2000

	gsettings set org.gnome.gedit.preferences.editor restore-cursor-position true

	gsettings set org.gnome.gedit.preferences.editor right-margin-position 80

	gsettings set org.gnome.gedit.preferences.editor scheme 'oblivion'

	gsettings set org.gnome.gedit.preferences.editor search-highlighting true

	gsettings set org.gnome.gedit.preferences.editor smart-home-end 'after'

	gsettings set org.gnome.gedit.preferences.editor syntax-highlighting true

	gsettings set org.gnome.gedit.preferences.editor tabs-size 4

	gsettings set org.gnome.gedit.preferences.editor use-default-font false

	gsettings set org.gnome.gedit.preferences.editor wrap-last-split-mode 'word'

	gsettings set org.gnome.gedit.preferences.editor wrap-mode 'word'


	return 0
}




##
## ## Cinnamon / Config
##

mod_cinnamon_config () {


	mod_cinnamon_config_for_mouse_button_modifier

	mod_cinnamon_config_for_keybind_main

	mod_cinnamon_config_for_keybind_custom

	mod_cinnamon_config_for_workspace

	mod_cinnamon_config_for_hotcorner


	return 0
}

mod_tool_config () {

	mod_tool_gnome_terminal_config

	mod_tool_nemo_config

	mod_tool_gedit_config


	return 0
}

mod_config_portal () {


	echo
	echo "##"
	echo "## ## Cinnamon Config / Adjustment / Start"
	echo "##"
	echo




	mod_cinnamon_config

	mod_tool_config




	echo
	echo "##"
	echo "## ## Cinnamon Config / Adjustment / Done"
	echo "##"
	echo


	return 0
}




##
## ## Main
##

__main__ () {

	mod_config_portal

	return 0
}

__main__ "${@}"
