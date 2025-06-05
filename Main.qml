import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
   Column{
       anchors.horizontalCenter: parent.horizontalCenter
       width:parent.width - 50

      // heigth:parent.height-50
        TodoItem{}
        TodoItem{}
        TodoItem{}
        TodoItem{}
    }

}
