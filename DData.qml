import QtQuick 2.15

/*
 * DData contains data that should be available for the whole program. Most
 * properties should be added to the components where they are immediately used,
 * but some data is listed here to make them globally available and easy to
 * find.
 */

QtObject {
    // Generic
    property bool debug: false
    // Home data
    readonly property string userName: "Anthony M."
    property int maxSpeed: 240
    property int phoneCharge: 72
    property real homeSceneSpeed: 1.5
    property real homeSceneSpeedStep: 0.2
    property real homeSceneMaxSpeed: 3
    // Car energy data
    readonly property real avgEnergyConsumption: driveMode == 0 ? 304 : driveMode == 1 ? 328 : driveMode == 2 ? 356 : 288
    readonly property int range: energyAmount * (1000 / avgEnergyConsumption) * 100
    property int avgSpeed: 43
    property real energyAmount: 0.5
    property int driveMode: 0
    readonly property var driveModes: ["Normal", "Comfort", "Sport", "Eco"]
    readonly property string driveModeString: driveModes[driveMode]
    property int tirePressureBackRight: 33
    // Weather data
    property int temperature: 22
    property int weather: 1
    // Phone data
    property int networkQuality: 3
    // hh:mm
    property string timeString: ""
    // Lights
    property real lightsLevel: 0.5
}
