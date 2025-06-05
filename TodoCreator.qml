import QtQuick
import QtQuick.Controls
Row{
    id: creatorLayout
    height: 50
    width:parent.width
    signal addRequestedTodoItem(string todoText)
    TextField{
        id:input
        height:parent.height
        width:(parent.width-1*50)*3/4
        font.pixelSize: 15
        padding: 8
    }
    MButton{
        buttonText: "Add"
        height:parent.height
        onBtnHandler:{
            const text =input.text.trim();

            input.text="";
            console.log(`input:::${text} added`);

            text !== "" && creatorLayout.addRequestedTodoItem(text);
        }
    }
    MButton{
        buttonText: "Clear"
        height:parent.height
        onBtnHandler:{
            const {text}=input;
            input.text="";
            console.log(`input:::${text}`)
        }
    }
}
