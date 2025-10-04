import Quickshell
import Quickshell.Io
import QtQuick

import "../.."

Rectangle {
    id: clockrect

    x: 10
    y: 60

    implicitWidth: 40
    implicitHeight: 105

    radius: 10
    color: Config.theme.accent

    Text {
        id: clock

        y: 5
        x: 9

        font.family: "JetBrainsMono NerdFont"
        font.pixelSize: 18
        lineHeight: 0.8
        color: Config.theme.font
    }

    Rectangle {
        id: splitrect
        y: 51

        implicitHeight: 6
        implicitWidth: 50

        color: Config.theme.background
    }

    Text {
        id: month

        x: 8
        y: 61

        font.family: "JetBrainsMono NerdFont"
        font.pixelSize: 14
        font.bold: true
        color: Config.theme.font
    }

    Text {
        id: date

        x: 9
        y: 75

        font.family: "JetBrainsMono NerdFont"
        font.pixelSize: 18
        color: Config.theme.font
    }

    Process {
        id: fetchClock

        command: ["date", "+%H\n%M"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: clock.text = this.text
        }
    }

    Process {
        id: fetchMonth

        command: ["date", "+%b"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: month.text = this.text.toUpperCase()
        }
    }

    Process {
        id: fetchDate

        command: ["date", "+%e"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: date.text = this.text
        }
    }
}