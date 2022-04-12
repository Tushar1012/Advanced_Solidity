// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
//need to create contract
contract Todolist{
    struct Todoitem 
    {
        string text;
        bool completed;
        
    }
    // create an array of today
    Todoitem[] public todos;

    function createTodo(string memory _text) public{
        // method to oush element in array
        todos.push(Todoitem(_text,false));

        //method 2 we need to be more specific in this arrya this time
        todos.push(Todoitem({text:_text,completed :false}));

        // Method 3 - Initialize an empty struct, then set individual properties
        Todoitem memory todo;
        todo.text=_text;
        todo.completed =false;
        todos.push(todo);
        
    }
    //update a struct value
    function update(uint _index,string memory _text)public{
        todos[_index].text=_text;
    }

    //update compleated
    function toggleCom(uint _index) public {
        todos[_index].completed =!todos[_index].completed;
        
    }

}


