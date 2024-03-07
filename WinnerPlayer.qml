import QtQuick 2.0

Rectangle {
    width: 500;
    height: 300
    border.color: "gray"
    anchors.horizontalCenter: parent.horizontalCenter

    Column {
        width: 500 -10
        spacing: 50
        anchors.centerIn: parent
        Text {
            text: '<b>No.</b> ' //+ Controller.....
            font.pixelSize: 24
            wrapMode : Text.WordWrap
            width: parent.width
        }
        Text {
            //your code here
            //....
        }
        Text {
            //your code here
            //....
        }
    }
}
