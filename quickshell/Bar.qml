// Bar.qml
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland

Scope {
PanelWindow {
    anchors.top: true
    anchors.left: true
    anchors.right: true
    implicitHeight: 40
    // color: "#1a1a1a"
    color: "transparent"

    RowLayout {
        id: workspacesRow
        anchors.fill: parent
        spacing: 8
        // Left margin spacer
		Item { Layout.preferredWidth: 16 }

        // Workspaces Hyprland
        WorkspacesWidget { Layout.alignment: Qt.AlignVCenter }

        // Left center spacer
        Item { Layout.fillWidth: true }
        // Date 
        DateWidget { Layout.alignment: Qt.AlignVCenter }
        // Right center spacer
        Item { Layout.fillWidth: true }

        // System tray
        TrayWidget { Layout.alignment: Qt.AlignVCenter }
        // Battery
        BatteryWidget { Layout.alignment: Qt.AlignVCenter }
        // Right margin spacer
        Item { Layout.preferredWidth: 16 } 
    }
}
}
