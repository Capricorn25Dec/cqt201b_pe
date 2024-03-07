import QtQuick 2.0

Rectangle {
    id: root
    width: 640
    height: 480
    signal handleBackClicked();

    //Tilte
    Header {
        id: header
        width: 640
        height: 50
        title: "Winner"
        anchors {
            top: parent.top
            topMargin: 0
        }
    }
    WinnerPlayer {
        anchors {
            top: header.bottom
            topMargin: 0
        }
    }
    QButton {
        id: btnback
        //your code here
        //....
    }
}


