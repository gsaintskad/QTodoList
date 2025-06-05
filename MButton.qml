import QtQuick
import QtQuick.Controls
Button{
    id:btn

    height: 50
    text:"MBUTTON"

    property alias buttonText: btn.text
    signal btnHandler()

    onClicked: {
        console.log(`${btn.text} has been clicked!!!`)
        btn.btnHandler();
    }
}
