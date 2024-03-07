import QtQuick 2.0

Rectangle {
    id: btn
    width: 150
    height: 50
    color: "gray"
    property string buttonText: ""
    property bool isBtnShow: false
    property bool isBtnStart: false
    property bool isBtnReset: false
    property bool isBtnBack: false

    signal showClicked();
    signal backClicked();
    signal resetClicked();
    signal startClicked();

    Text {
        text: buttonText
        font.pixelSize: 30
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            if(isBtnShow)
                showClicked()
            if(isBtnBack)
                backClicked()
            if(isBtnReset)
                resetClicked()
            if(isBtnStart)
                startClicked()
        }
        onPressed: {
            //btn.color =
        }
        onReleased: {
            //your code here
            //....
        }
    }
}
