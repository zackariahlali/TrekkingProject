import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"
import "../../../images"

ColumnLayout {
    id : etat

    anchors.fill: parent
    spacing: 0


    RowLayout {
        spacing: 0
        Layout.preferredHeight: 0.25*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "red"
        }
    }

    RowLayout {
        id : btn1
        visible: true

        spacing: 0
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "grey"

            MyButton {
                text : "Nouveau Trek"
                height: etat.height / 15
                width: etat.width / 2
                onClicked: {
                    btn1.visible = false
                    btn2.visible = false
                    error.visible = false
                    check.visible = true
                }
            }
        }
    } // fin RowLayout

    RowLayout {
        id : btn2
        visible: true

        spacing: 0
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "grey"

            MyButton {
                text : "Charger un Trek"
                height: etat.height / 15
                width: etat.width / 2
                onClicked: {
                    console.log("changement de page > TrekTracker.etat2");
                    MyContext.connectToMysql();
//                    trek1_visibilite = false;
//                    trek2_visibilite = true;
                }

            }
        }
    } // fin RowLayout

    RowLayout {
        id : error
        visible: true

        spacing: 0

        Layout.preferredHeight: 0.25*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true


        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "darkGreen"

            ErrorBox {
                height : parent.height
                width : parent.width

                anchors.centerIn : parent

                content : MyContext.errorMessage
            }
        }

    } //fin RowLayout


    RowLayout {
        id : check
        visible: false

        spacing: 0

        Layout.preferredHeight: 0.25*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true


        ColumnLayout {
            anchors.fill: parent
            spacing: 0

            RowLayout {
                spacing: 0
                Layout.preferredHeight: (1/3)*parent.height
                Layout.fillHeight: true
                Layout.fillWidth: true

                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    //color: "grey"

                    InputBox {
                        id : label
                        placeholderText: "titre du trek"

                        width: parent.width * 0.90
                    }
                }
            } //fin rowlayout


            RowLayout {
                spacing: 0
                Layout.preferredHeight: (1/3)*parent.height
                Layout.fillHeight: true
                Layout.fillWidth: true

                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    //color: "red"

                    MyButton {
                        id : valid
                        visible: true

                        text : "OK"
                        height: etat.height / 15
                        width: etat.width /3
                        onClicked: console.log("valid " + label.text)
                    }
                }

                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    //color: "red"

                    MyButton {
                        id: cancel
                        visible : true

                        text : "cancel"
                        height: etat.height / 15
                        width: etat.width /3
                        onClicked: {
                            btn1.visible = true
                            btn2.visible = true
                            check.visible = false
                            console.log("cancel")
                        }
                    }
                }
            }
        } //fin rowlayout

    }

    RowLayout {
        spacing: 0
        Layout.preferredHeight: 0.25*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true


        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "blue"

            Image {
                id: logoAfpa
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                source: "../../../images/logoAfpa.jpg"
            }


        }
    } // fin RowLayout
}



