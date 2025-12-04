#!/usr/bin/env bash


#set -e




##
## ## Link
##
## * https://github.com/samwhelp/ubuntu-cinnamon-adjustment/blob/main/demo/scripts/main/cinnamon-keybind/cinnamon-keybind.sh
## * https://raw.githubusercontent.com/samwhelp/ubuntu-cinnamon-adjustment/refs/heads/main/demo/scripts/main/cinnamon-keybind/cinnamon-keybind.sh
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
## ## Cinnamon / Config
##

mod_cinnamon_config () {


	mod_cinnamon_config_for_mouse_button_modifier

	mod_cinnamon_config_for_keybind_main

	mod_cinnamon_config_for_keybind_custom

	mod_cinnamon_config_for_workspace


	return 0
}

mod_config_portal () {


	echo
	echo "##"
	echo "## ## Cinnamon Config / Keybind / Start"
	echo "##"
	echo




	mod_cinnamon_config




	echo
	echo "##"
	echo "## ## Cinnamon Config / Keybind / Done"
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
