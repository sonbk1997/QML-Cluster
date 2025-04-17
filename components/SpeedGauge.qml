import QtQuick 2.15
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

Item {
    id: speedGauge
    width: 300
    height: 300

    property int value: 0 // Speed (km/h)
    property int maxValue: 240 // max speed
    property alias label: speedValue.text
    property string name: "Speed"

    // Background
    Image {
        anchors.fill: parent
        source: "qrc:/icons/speed_background.png"
        fillMode: Image.PreserveAspectFit
    }

    // Needle
    Image {
        id: needle
        source: "qrc:/icons/speed_needle.png"
        width: sourceSize.width*0.137
        height: sourceSize.height*0.137
        antialiasing: true
        anchors.top: parent.verticalCenter
        anchors.topMargin: 16
        anchors.right: parent.horizontalCenter
        anchors.rightMargin: -16
        transform: Rotation {
            origin.x: 70 - 16
            origin.y: 16
            angle: value * 270 / maxValue

            Behavior on angle {
//                NumberAnimation {
//                    duration: 50   // Smoothness speed in ms
//                    easing.type: Easing.InOutQuad
//                }
                SpringAnimation {
                    spring: 1.4
                    damping: .15
                }
            }
        }
    }

    // Digital speed text
    Text {
        id: speedValue
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 16
        font.pixelSize: 14
        color: "black"
        text: value + " km/h"
    }

    Text {
        id: speedText
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        font.pixelSize: 14
        color: "black"
        text: name
    }

    Image {
        source: "qrc:/icons/overlay.png"
        width: sourceSize.width*1.2
        height: sourceSize.height*1.2
        anchors.top: parent.verticalCenter
        anchors.topMargin: -62
        anchors.right: parent.horizontalCenter
        anchors.rightMargin: -81
    }
}
