import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Page {
    id: root
    signal backButtonClicked();

    background: Rectangle {
        id: page
        width: parent.width; height: parent.height
        color: "#3c3c3c"
        Label{
            text: "Hello world!"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }

        BackButton { onClicked: root.backButtonClicked() }
    }
}
