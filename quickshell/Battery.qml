// Battery.qml
pragma Singleton
import QtQuick
import Quickshell
import Quickshell.Io

Singleton {
    id: root
    property int capacity: -1
    property string status: "Unknown"
    property bool hasBattery: false

    Process {
        id: batteryCheck
        command: ["sh", "-c", "test -d /sys/class/power_supply/BAT*"]
        running: true
        onExited: function(exitCode) { hasBattery = exitCode === 0 }
    }

	Process {
		id: batteryProc
		command: ["sh", "-c", "echo $(cat /sys/class/power_supply/BAT*/capacity),$(cat /sys/class/power_supply/BAT*/status)"]
		running: hasBattery

		stdout: SplitParser {
			onRead: function(data) {
				const [capacityStr, stat] = data.trim().split(',')
				capacity = parseInt(capacityStr)
				status = stat
			}
		}
	}

    Timer {
        interval: 5000
        running: hasBattery
        repeat: true
        onTriggered: batteryProc.running = true
    }
}
