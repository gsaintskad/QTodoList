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
    function filterTodoItems(searchText) {
        var query = searchText.trim().toLowerCase();

        for (let i = 0; i < todoItemsColumn.children.length; ++i) {
            let item = todoItemsColumn.children[i];


            if (item && typeof item.itemText !== 'undefined' && typeof item.visible !== 'undefined') {
                if (query === "") {
                    item.visible = true;
                } else {
                    let itemText = String(item.itemText).toLowerCase();
                    item.visible = itemText.includes(query);
                }
            }
        }
    }

    Column{
        id: mainLayout
        anchors.horizontalCenter: parent.horizontalCenter
        width:parent.width - 50
        TextField {
           id: searchInput
           width:(parent.width-1*50)*3/4
           placeholderText: "Search ..."
           font.pixelSize: 15
           padding: 8
           onTextChanged: {
               filterTodoItems(text);
           }
        }
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
        Text {
            text: qsTr("My Todos:")
            font.bold: true
            font.pixelSize: 18
        }
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
