import Quickshell
import QtQuick

import ".."

ArchLogo {
    id: archLogo
    anchors.centerIn: parent

    Text {
        id: archLogoText
        text: "󰣇"
        color: Config.theme.font
    }
}