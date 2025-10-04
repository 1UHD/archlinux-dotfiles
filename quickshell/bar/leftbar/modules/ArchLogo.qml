import Quickshell
import QtQuick

import "../.."

Rectangle {
    id: archLogo

    x: 10
    y: 10

    implicitHeight: 40
    implicitWidth: 40

    color: Config.theme.background

    Text {
        text: "󰣇"

        font.pixelSize: 28
        anchors.centerIn: parent
        color: Config.theme.font
    }
}