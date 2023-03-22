import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Page {
    id: root

    signal lab1ButtonClicked();
    signal lab2ButtonClicked();

    background: Rectangle {
        id: mainBackground
        color: "#3c3c3c"
        Grid {
            id: buttonPicker
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            rows: 1; columns: 5; spacing: 7

            Button{
                id: lab1Button
                text: "Lab 1"
                onClicked:{
                    root.lab1ButtonClicked()
                }
            }

            Button{
                id: lab2Button
                text: "Lab 2"
                onClicked:{
                    root.lab2ButtonClicked()
                }
            }

            Button {
                id: lab3Button
                text: "Lab 3"
                onClicked:{

                }
            }

            Button {
                id: lab4Button
                text: "Lab 4"
                onClicked:{

                }
            }

            Button {
                id: lab5Button
                text: "Lab 5"
                onClicked: {

                }
            }
        }
    }


}
