import QtQuick 2.15
import QtQuick.Window 2.15
import "components"

Window {
    visible: true
//    visibility: "FullScreen"
    width: 800
    height: 400
    title: qsTr("Cluster")

    Item {
        id: root
        width: parent.width
        height: parent.height

        /*  These components are defined in the root so they can be used
            in this component and all child components.
        */
        DData {
            id: dData
        }

        DStyle {
            id: dStyle
        }

        SpeedGauge {
            value: Cluster.speed
            maxValue: dData.maxSpeed
            name: "🍃Speed"
            anchors.left: parent.left
            anchors.leftMargin: 100
            anchors.verticalCenter: parent.verticalCenter
        }

        SpeedGauge {
            value: Cluster.speed
            maxValue: dData.maxSpeed
            name: "🍃RPM"
            anchors.right: parent.right
            anchors.rightMargin: 100
            anchors.verticalCenter: parent.verticalCenter
        }
    }

}
