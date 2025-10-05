// TrayWidget.qml
import QtQuick
import Quickshell
import Quickshell.Services.SystemTray

Rectangle {
    width: trayRow.implicitWidth + 20
    height: trayRow.implicitHeight + 10
    radius: 10
    color: "#333333"
    border.color: "#555555"
    border.width: 2
    
    Row {
        id: trayRow
        anchors.centerIn: parent
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
