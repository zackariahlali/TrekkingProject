import QtQuick 2.9
import QtQuick.Controls 2.2
import QtWebView 1.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

ColumnLayout {
    id : etat
    anchors.fill: parent
    anchors.top : header.bottom
    spacing: 0


    RowLayout {
        spacing: 0
        Layout.preferredHeight: 0.3*parent.height
        Layout.fillHeight: false
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "red"

            MyList {width : parent.width ;  height : parent.height}

        } //fin rectangle
    }

    RowLayout {
        spacing: 0
        Layout.preferredHeight: 0.2*parent.height
        Layout.fillHeight: false

        Rectangle {
            Layout.fillHeight: true
            Layout.preferredWidth: 0.5*parent.width
            Layout.fillWidth: true
            //color: "darkGreen"

            MyButton {
                text : "Voir"
                height: etat.height / 15
                width: etat.width /3
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.preferredWidth: 0.5*parent.width
            //color: "lightGreen"

            MyButton {
                text : "Selectionnez"
                height: etat.height / 15
                width: etat.width /3
                onClicked: {
                    etat3.visible = true ;
                    etat2.visible = false
                }
            }
        }
    }


    RowLayout {
        spacing: 0
        Layout.preferredHeight: 0.4*parent.height
        Layout.fillHeight: false
        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "darkBlue"

            Image {
                id: logoAfpa
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                source: "../../../images/logoAfpa.jpg"
            }
        }
    }
}



