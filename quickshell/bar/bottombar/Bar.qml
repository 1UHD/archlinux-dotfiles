import Quickshell
import QtQuick

import ".."

PanelWindow {
	id: topbar
	anchors {
		left: true
		right: true
        bottom: true
	}
	implicitHeight: 10

	color: Config.theme.background
}