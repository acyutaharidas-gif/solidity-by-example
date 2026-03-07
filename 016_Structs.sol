// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function add(string calldata _text) public {
        todos.push(Todo(_text, false)); //calling like function
        // OR
        todos.push(Todo({text: _text, completed: false})); //key-value mapping
        // OR
        Todo memory todo = Todo({text: _text, completed: false});
        todos.push(todo);
    }

    /**
     * Solidity automatically creates a getter for 'todos' so no need for getter fn required.
     */

    function updateText(string calldata _text, uint _index) public {
        todos[_index].text = _text;
    }

    function toggleCompleted(uint256 _index) public {
        todos[_index].completed = !todos[_index].completed;
    }
}
