import QtQuick 2.0

Rectangle {
    id: root
    width: 640
    height: 480
    //color: "gray"

    property bool isPlay: false
    property bool isLoading: false

    //Tilte
    Header {
        id: header
        width: 640
        height: 50
        title: "Player list"
        anchors {
            top: parent.top
            topMargin: 0
        }
    }

    Component {
        id: contactDelegate
        Item {
            width: list.width; height: 40
            Row {
                spacing: 50
                Text {
                    text: '<b>No.</b> ' + number
                    font.pixelSize: 24
                }
                Text {
                    text: '<b>Name:</b> ' + name
                    font.pixelSize: 24
                }
            }
        }
    }

    Rectangle {
        id: listPlayer
        width: parent.width - 20
        height: 300
        color: "gray"
        border.color: "gray"
        anchors {
            top: header.bottom
            topMargin: 0
            horizontalCenter: parent.horizontalCenter
        }
        ListView {
            id: list
            anchors.centerIn: parent
            width: 500
            height: 300
            //model: ....
            clip: true
            interactive: list.contentHeight > height
            delegate: contactDelegate
            visible: !root.isPlay
        }
    }

    QButton {
        id: btnStart
        anchors {
            top: parent.bottom
            topMargin: -100
            horizontalCenter: parent.horizontalCenter
        }
        isBtnStart: true
        buttonText: qsTr("START")
        onStartClicked: {
            root.isLoading = true
            timerLoading.start()
        }
    }

    AnimationLoading {
        id: loadingIco
        anchors.centerIn: listPlayer
        z: 100
        visible: root.isLoading
    }

    Timer {
        id: timerLoading
        interval: 3000 //3s
        repeat: false
        onTriggered: {
            root.isLoading = false
            root.isPlay = true
            Controller.playRamdomNumber()
        }
    }
}
