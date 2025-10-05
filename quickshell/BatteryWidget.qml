// BatteryWidget.qml
import QtQuick
import Quickshell

Rectangle {
    width: batteryText.implicitWidth + 20
    height: batteryText.implicitHeight + 10
    radius: 10
    color: Battery.status === "Charging" ? "#4a9eff" : "#123456"
    border.color: "#555555"
    border.width: 2

    Text {
        font.family: "FiraCode Nerd Font"
        id: batteryText
        anchors.centerIn: parent
        color: "#ffffff"

        text: {
            let icon = "󰂂"
            if (Battery.capacity <= 20) icon = "󰁺"
            else if (Battery.capacity <= 40) icon = "󰁽"
            else if (Battery.capacity <= 60) icon = "󰁿"
            else if (Battery.capacity <= 80) icon = "󰂁"

            const symbol = Battery.status === "Charging" ? "🔌" : ""
            return `${symbol} ${Battery.capacity}%`
        }
    }
}
