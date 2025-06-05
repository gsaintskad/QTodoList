import QtQuick
import QtQuick.Controls
import QtQuick.Window
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Component{
        id:todoItemFactory
        TodoItem{}
    }
    Column{
       anchors.horizontalCenter: parent.horizontalCenter
       width:parent.width - 50
        TodoCreator{
            id:creator
            onAddRequestedTodoItem: (todoText)=>{
                                            if (todoItemFactory.status === Component.Ready) {
                                                const todo = todoItemFactory.createObject(todoItemsColumn, { "itemText": todoText });
                                                if (newTodo === null) {
                                                    console.error("Failed to create TodoItem object.");
                                                }
                                            } else {
                                                console.error("TodoItem factory is not ready. Status: " + todoItemFactory.status);
                                                console.error("Error string: " + todoItemFactory.errorString());
                                            }
                                    }
        }
      // heigth:parent.height-50
       Column{
           id: todoItemsColumn
            width:parent.width
            TodoItem{
                itemText: "but"
            }
            TodoItem{}

       }
    }

}
