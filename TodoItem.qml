import QtQuick

Rectangle{
    id:root
    width:parent.width
    height: 50
    anchors.horizontalCenter:parent.horizontalCenter
    border.color: "black"
    color: "lightgrey"
    Text{
        text:"default todo!!!"
        anchors.verticalCenter:parent.verticalCenter
    }
    Row{
        height: parent.height
        anchors.right: parent.right
        /*MButton{
            anchors.right: parent.right
        }
        MButton{
            anchors.right: parent.right
        }
        MButton{
            anchors.right: parent.right
        }*/
        MButton{}
        MButton{}
        MButton{}
    }

}
