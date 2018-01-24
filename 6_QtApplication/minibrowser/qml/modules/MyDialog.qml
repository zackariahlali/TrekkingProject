import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2

Dialog {

    property string titre: "titre de la boite Dialog"

    width: 300
    height: 200

    //visible: true

    title: titre

    standardButtons: Dialog.Ok | Dialog.Cancel
    onAccepted: console.log(label.text)
    onRejected: console.log("abandon")

    Column {
        anchors.fill: parent
        spacing: 0

        Row {
            height: (1/2)*parent.height
            width : parent.width

            Rectangle {
                anchors.fill: parent
                //color: "red"

                Text {
                    text : "Entrer le nom de votre treck : "

                    font.family: "Calibri"
                    font.pixelSize: Qt.application.font.pixelSize * 1.5
                    font.bold: true

                    anchors.centerIn : parent

                }
            }
        }

        Row {
            height: (1/2)*parent.height
            width : parent.width

            Rectangle {
                anchors.fill: parent
                //color: "blue"

                TextField {
                    id : label
                    text : ""

                    font.family: "Calibri"
                    font.pixelSize: Qt.application.font.pixelSize * 1.5

                    anchors.centerIn : parent
                }
            }
        }

    }
}
