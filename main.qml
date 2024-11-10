import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls
import JavaClassCall 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    JavaClassCall {
        id: javaClass
    }

    Button {
        text: "Call Java Method"
        onClicked: {
            console.log("Calling Platform.....");
            javaClass.platformCall();
        }
    }

    Connections {
        target: javaClass
        function onObjetiveMessageReceived(message) {
            console.log("Received from IoS:", message);
        }
    }

    Connections {
        target: javaClass
        function onJavaMessageReceived(message) {
            console.log("Received from Android:", message);
        }
    }

}
