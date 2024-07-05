import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button
    {
        id:myButton
        width: 100
        height: 50
        text: "open Folder Dialog Control"
        anchors.centerIn: parent
        onClicked:
        {
            myFolderDialog.open()
        }
    }

    FolderDialog
    {
        id:myFolderDialog
        title: "Select The Folder..."
        onAccepted:
        {
            console.log(myFolderDialog.selectedFolder)
        }
    }
}
