// TrayWidget.qml
import QtQuick
import Quickshell
import Quickshell.Services.SystemTray

Rectangle {
    radius: 10
    color: "#333333"
    border.color: "#555555"
    border.width: 2

    width: trayContainer.implicitWidth + 20
    height: trayContainer.implicitHeight + 10

    Item {
        id: trayContainer
        anchors.centerIn: parent
        implicitWidth: trayRow.childrenRect.width
        implicitHeight: trayRow.childrenRect.height

        Row {
            id: trayRow
            spacing: 8

            Repeater {
                model: SystemTray.items

                Image {
                    source: modelData.icon
                    width: 14
                    height: 14

                    MouseArea {
                        anchors.fill: parent
                        acceptedButtons: Qt.LeftButton | Qt.RightButton
                        onClicked: {
                            if (mouse.button === Qt.LeftButton) {
                                modelData.activate()
                            } else if (mouse.button === Qt.RightButton) {
                                modelData.display()
                            }
                        }
                    }
                }
            }
        }
    }
}
