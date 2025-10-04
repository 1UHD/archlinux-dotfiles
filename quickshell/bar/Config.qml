pragma Singleton

import Quickshell
import QtQuick

Singleton {
    id: config

    property var theme: {
        "background": '#1c1c1c',
        "accent": '#2c2c2c',
        "primary": "",
        "activated": "",
        "font": "#C5003C",
        "fontactivated": "#55EAD4"
    }
}