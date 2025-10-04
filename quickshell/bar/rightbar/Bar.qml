import Quickshell
import QtQuick

import ".."

PanelWindow {
	id: topbar
	anchors {
		top: true
		bottom: true
		right: true
	}
	implicitWidth: 10

	color: Config.theme.background
}