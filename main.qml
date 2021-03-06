import QtQuick 2.0
import OpenGLUnderQML 1.0
import QtQuick.Window 2.0

Window {
    id: root
    width: 900
    height: 540
    visible: true
	title: "Map"

    MapPage {
        id: mapPage
        anchors.fill: parent
        visible: true
        screenWidth: root.Screen.width
        screenHeight: root.Screen.height
    }

    CQtImGui {
		SequentialAnimation on t {
			NumberAnimation { to: 1; duration: 2500; easing.type: Easing.InQuad }
			NumberAnimation { to: 0; duration: 2500; easing.type: Easing.OutQuad }
			loops: Animation.Infinite
			running: true
		}
    }

    Rectangle {
        color: Qt.rgba(1, 1, 1, 0.7)
        radius: 10
        border.width: 1
        border.color: "white"
        anchors.fill: label
        anchors.margins: -10
    }

    Text {
        id: label
        color: "black"
        wrapMode: Text.WordWrap
        text: "The background here is a squircle rendered with raw OpenGL using the 'beforeRender()' signal in QQuickWindow. This text label and its border is rendered using QML"
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: 20
    }
}
