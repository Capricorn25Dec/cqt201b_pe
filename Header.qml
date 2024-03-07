import QtQuick 2.0

Rectangle {
    id: header
    width: 200
    height: 50
    property string title: ""

    Text {
        id: name
        text: title
        font.pixelSize: 35
        font.bold: true
        anchors.centerIn: parent
        width: paintedWidth
        height: paintedHeight
    }
}
