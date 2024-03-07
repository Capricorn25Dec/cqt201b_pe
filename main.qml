import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Lucky Number")

    Rectangle {
        id: root
        width: 640
        height: 480
        //color: "gray"

        property int screenType: mSCR_MAIN
        readonly property int mSCR_MAIN: 0
        readonly property int mSCR_SUB: 1
        readonly property int mSCR_WIN: 2

        Component {
            id: mainScreen
            PlayScreen {
                height: root.height
                onIsPlayChanged: {
                    root.screenType = root.mSCR_SUB
                }
            }
        }
        Component {
            id: subScreen
            SubScreen {
                height: root.height
                onHandleShowClicked: {
                    //root.screenType = ...
                }
                onHandleBackClicked: {
                    //your code here
                    //....
                }
            }
        }
        Component {
            id: winScreen
            WinScreen {
                height: root.height
                onHandleBackClicked: {
                    //your code here
                    //....
                }
            }
        }

        Loader {
            id: loadId
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter
            sourceComponent:
            {
                if(root.screenType == root.mSCR_MAIN) return mainScreen
                //your code here
                //....
            }
        }
    }
}
