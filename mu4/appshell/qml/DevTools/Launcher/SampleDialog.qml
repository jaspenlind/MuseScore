import QtQuick 2.7
import MuseScore.Ui 1.0
import MuseScore.UiComponents 1.0

QmlDialog {

    id: root

    property var color: "#ffffff"

    width: 400
    height: 400

    Rectangle {

        anchors.fill: parent
        color: root.color

        Row {
            anchors.centerIn: parent
            height: 40
            width:  100
            spacing: 20

            FlatButton {

                width: 40
                text: "Yes"
                onClicked: {
                    root.ret = {errcode: 0, value: "Yes"}
                    root.hide()
                }
            }

            FlatButton {
                width: 40
                text: "Cancel"
                onClicked: {
                    root.ret = {errcode: 3 }
                    root.hide()
                }
            }
        }
    }
}
