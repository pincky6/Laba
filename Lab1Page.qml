import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import com.lab.cont 1.0

Page {
    id: root

    signal backButtonClicked();

    background: Rectangle {
        id: page
        width: parent.width; height: parent.height
        color: "#3c3c3c"

        Button {
            text: "Get device info"
            anchors.centerIn: parent
            onClicked: cont.writeUSBDevicesToFile()
        }

        Grid {
            id: colorPicker
            x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
            rows: 3; columns: 3; spacing: 3

            Cell { cellColor: "red"; onClicked: page.color = cellColor }
            Cell { cellColor: "green"; onClicked: page.color = cellColor }
            Cell { cellColor: "blue"; onClicked: page.color = cellColor }
            Cell { cellColor: "yellow"; onClicked: page.color = cellColor }
            Cell { cellColor: "steelblue"; onClicked: page.color = cellColor }
            Cell { cellColor: "black"; onClicked: page.color = cellColor }
            Cell { cellColor: "#3c3c3c"; onClicked: page.color = cellColor }
        }

        BackButton { onClicked: root.backButtonClicked() }
    }

    USBInfo {
        id: cont
    }
}
