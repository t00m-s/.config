import Quickshell
import Quickshell.Hyprland
import QtQuick
Repeater {
            model: Hyprland.workspaces

            Rectangle {
                width: workspaceID.implicitWidth + 20
                height: workspaceID.implicitHeight + 10
                radius: 10
                color: modelData.active ? "#4a9eff" : "#333333"
                border.color: "#555555"
                border.width: 2

                MouseArea {
                    anchors.fill: parent
                    onClicked: modelData.activate()

                    Text {
                        id: workspaceID
                        text: modelData.id
                        anchors.centerIn: parent
                        color: modelData.active ? "#ffffff" : "#cccccc"
                        font.pixelSize: 12
                        font.family: "sans-serif"
                    }
                }
            }
}
