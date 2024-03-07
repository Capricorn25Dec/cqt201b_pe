import QtQuick 2.0

Image {
    id: loadingImg
    source: ""
    SequentialAnimation {
        id: loadingAni
        running: loadingImg.visible
        loops: Animation.Infinite
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_00.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_01.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_02.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_03.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_04.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_05.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_06.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_07.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_08.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_09.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_10.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_11.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_12.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_13.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_14.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_15.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_16.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_17.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_18.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_19.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_20.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_21.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_22.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_23.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_24.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_25.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_26.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_27.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_28.png"; duration: 50}
        PropertyAnimation {target: loadingImg; property: "source"; to: "qrc:/image/loading/icon_loading_29.png"; duration: 50}
    }
}
