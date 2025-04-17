import QtQuick 2.0

QtObject {

    /*
    ------------------------------------------------------
    ------------------------------------------------------
    ------------------------------------------------------


    DYNAMIC THEMES

    How to see this in action:
    1. From the bottom navigation, select leftmost item, Settings
    2. Change theme from Dark to Light

    - Demonstrates how color properties (fontColor1, backgroundColor1, etc.)
      are updated and animated when switching between day and night modes.
    - Smooth transitions are handled by ColorAnimation, enhancing usability
      without abrupt changes in brightness or contrast.

    ------------------------------------------------------
    ------------------------------------------------------
    ------------------------------------------------------
    */

    property bool nightMode: true
    property real nightModeAnimated: nightMode
    property color highlightColor: "#D200A4"
    property color highlightColorDisabled: "#fbacdc"
    property color highlightColor2: nightMode ? "#10136A" : highlightColor
    property color backgroundColor1: nightMode ? "#000000" : "#f4f3f7"
    property color fontColorDay: "#000000"
    property color fontColorNight: "#f4f3f7"
    property color fontColor1: nightMode ? fontColorNight : fontColorDay
    readonly property var weatherImages: ["weather-sunny.png", "weather-partiallycloudy.png", "weather-cloudy.png", "weather-rainy.png", "weather-rain-and-sun.png", "weather-snow.png", "weather-stormy.png"]
    readonly property var weatherText: ["Sunny", "Partially Cloudy", "Cloudy", "Rainy", "Rain and Sun", "Snowy", "Stormy"]
    property color widgetBackgroundColor: nightMode ? "#000000" : "#ffffff"
    property color widgetSelectorBackgroundColor: nightMode ? "#202020" : "#e0e0e0"
    property color widgetSeparatorColor: "#808080"
    property color buttonColorNormal: "#ffffff"
    property color buttonColorDisabled: "#808080"
    property color widgetButtonColor: nightMode ? "#ffffff" : highlightColor
    property color tabColor: nightMode ? "#10136A" : "#989DCE"
    property color slideSelectorColor: nightMode ? "#1E1D20" : "#DDDBDF"
    property color settingsViewBackground: nightMode ? "#000000" : "#ECEAEF"
    property color settingsNotificationBackground: nightMode ? "#1E1D20" : "#F4F3F7"
    // Icons
    readonly property string iconPath: nightMode ? "icons/white/" : "icons/"
    readonly property string iconPathInverted: nightMode ? "icons/" : "icons/white/"
    readonly property string iconToolbarMenu: iconPath + "menu.png"
    readonly property string iconToolbarAssistant: iconPath + "assistant.png"
    readonly property string iconToolbarAssistantFilled: iconPath + "assistant-filled.png"
    readonly property string iconToolbarWidgetsShow: iconPath + "widgets-show.png"
    readonly property string iconToolbarWidgetsHide: iconPath + "widgets-hide.png"
    readonly property string iconWidgetChange: iconPathInverted + "change.png"
    readonly property string iconWidgetRemove: iconPathInverted + "remove.png"
    readonly property string iconSkipPrevious: iconPath + "skip-previous.png"
    readonly property string iconSkipNext: iconPath + "skip-next.png"
    readonly property string iconPause: iconPath + "pause.png"
    readonly property string iconPlay: iconPath + "play.png"
    readonly property string iconShuffleOn: iconPath + "shuffle-on.png"
    readonly property string iconShuffleOff: iconPath + "shuffle-off.png"
    readonly property string iconFavoriteOn: iconPath + "favorite-on.png"
    readonly property string iconFavoriteOff: iconPath + "favorite-off.png"
    readonly property string iconDirection: iconPath + "direction.png"
    readonly property string iconBattery: iconPath + "battery.png"
    readonly property string iconBattery2: iconPath + "battery2.png"
    readonly property string iconBluetooth: iconPath + "icon-bt.png"
    readonly property string iconPhone: iconPath + "smartphone.png"
    readonly property string iconArrowRight: iconPath + "arrow-right.png"
    readonly property string iconArrowLeft: iconPath + "arrow-left.png"
    readonly property string icon5g: iconPath + "icon-5g.png"
    readonly property string iconNetwork: iconPath + "icon-network-"
    readonly property string iconClose: iconPath + "close.png"
    readonly property string iconNotifications: iconPath + "notifications.png"
    // Images
    readonly property string imageTurnRight: "turn-right.png"
    readonly property string weatherImagePath: "../images/weather/" + (nightMode ? "night/" : "")

    Behavior on nightModeAnimated {
        NumberAnimation {
            duration: 1000
            easing.type: Easing.InOutQuad
        }
    }

    Behavior on backgroundColor1 {
        ColorAnimation {
            duration: 1000
            easing.type: Easing.InOutQuad
        }
    }

    Behavior on fontColor1 {
        ColorAnimation {
            duration: 1000
            easing.type: Easing.InOutQuad
        }
    }

    Behavior on widgetBackgroundColor {
        ColorAnimation {
            duration: 1000
            easing.type: Easing.InOutQuad
        }
    }

    Behavior on widgetSelectorBackgroundColor {
        ColorAnimation {
            duration: 1000
            easing.type: Easing.InOutQuad
        }
    }

    Behavior on tabColor {
        ColorAnimation {
            duration: 1000
            easing.type: Easing.InOutQuad
        }
    }

    Behavior on settingsViewBackground {
        ColorAnimation {
            duration: 1000
            easing.type: Easing.InOutQuad
        }
    }

    Behavior on settingsNotificationBackground {
        ColorAnimation {
            duration: 1000
            easing.type: Easing.InOutQuad
        }
    }

    Behavior on slideSelectorColor {
        ColorAnimation {
            duration: 1000
            easing.type: Easing.InOutQuad
        }
    }

    Behavior on highlightColor2 {
        ColorAnimation {
            duration: 1000
            easing.type: Easing.InOutQuad
        }
    }
}
