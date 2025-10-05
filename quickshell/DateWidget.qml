// DateWidget.qml
import QtQuick

Rectangle {
    width: dateText.implicitWidth + 20
    height: dateText.implicitHeight + 10
	radius: 10
	color: "#4a9eff"
	border.color: "#555555"
	border.width: 2

	Text {
		font.family: "FiraCode Nerd Font"
		id: dateText
		anchors.centerIn: parent
		color: "#ffffff"
		text: Date.time
	}
}
