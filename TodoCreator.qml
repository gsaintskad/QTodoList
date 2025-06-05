import QtQuick
import QtQuick.Controls
Row{
    id: creatorLayout
    height: 100
    signal addRequestedTodoItem(string todoText)
    TextInput{
        id:input
        width:(parent.width-1*50)*3/4

    }
    MButton{
        buttonText: "Add"
        onBtnHandler:{
            const text =input.text.trim();

            input.text="";
            console.log(`input:::${text} added`);

            text !== "" && creatorLayout.addRequestedTodoItem(text);
        }
    }
    MButton{
        buttonText: "Clear"
        onBtnHandler:{
            const {text}=input;
            input.text="";
            console.log(`input:::${text}`)
        }
    }
}
