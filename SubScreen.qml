import QtQuick 2.0

Rectangle {
    id: root
    width: 640
    height: 480
    //color: "gray"

    property bool isPlay: false
    signal handleShowClicked();
    signal handleBackClicked();

    Image {
        width: parent.width - 20
        height: 300
        anchors {
            //your code here
            //....
        }
        source: "qrc:/image/win.gif"
    }

    Row {
        anchors {
            //your code here
            //....
        }
        spacing: 20

        QButton {
            id: btnback
            isBtnBack: true
            buttonText: qsTr("BACK")
            onBackClicked: {
                handleBackClicked()
                isPlay = false
            }
        }
        QButton {
            id: btnShow
            isBtnShow: true
            buttonText: qsTr("SHOW")
            onShowClicked: {
                //your code here
                //....
            }
        }
    }
}
