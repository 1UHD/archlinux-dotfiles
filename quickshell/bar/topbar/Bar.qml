import Quickshell
import QtQuick

import ".."

PanelWindow {
	id: topbar
	anchors {
		top: true
		left: true
		right: true
	}
	implicitHeight: 10

	color: Config.theme.background
}