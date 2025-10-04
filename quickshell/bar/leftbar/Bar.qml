import Quickshell
import QtQuick

import ".."
import "modules" as Modules

PanelWindow {
	id: topbar
	anchors {
		top: true
		left: true
		bottom: true
	}
	implicitWidth: 60

	color: Config.theme.background

	Modules.ArchLogo {}
	Modules.Clock {}
}