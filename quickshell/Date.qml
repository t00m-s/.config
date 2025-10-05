// Date.qml
pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
	id: root
	readonly property string time: {
		Qt.formatDateTime(systemClock.date, "dddd d MMMM hh:mm")
	}

	SystemClock {
		id: systemClock
		precision: SystemClock.Minutes
	}
}
