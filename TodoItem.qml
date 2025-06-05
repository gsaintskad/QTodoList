import QtQuick

Rectangle{
    id:root
    width:parent.width
    height: 50
    anchors.horizontalCenter:parent.horizontalCenter
    border.color: "black"
    color: "lightgrey"

    property alias itemText: contentText.text

    Text{
        id:contentText
        text:"default todo!!!"
        anchors.verticalCenter:parent.verticalCenter
    }
    Row{
        height: parent.height
        anchors.right: parent.right
        MButton{
            buttonText: "important"
            onBtnHandler:{
                contentText.text+='!!!';
            }
        }
        MButton{
            buttonText: "Done"
            onBtnHandler: {
                root.destroy(1000)
            }
        }
    }

    Component.onCompleted: {
        console.log(`${contentText.text} item has been created;`);
    }

}
