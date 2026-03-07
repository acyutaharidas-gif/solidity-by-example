// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract DataLocations {
    /**
     * storage - variable is a state variable (stored on the blockchain)
     * memory - variable is in memory and it exists while a function is being called
     * calldata - special data location that contains function arguments
     */

    struct FOO {
        uint val1;
        bool val2;
    }

    FOO[] private bars;

    function fun(uint _index) public {
        FOO storage bar = bars[_index];
        bar.val1 = 12;
        bar.val2 = true;
    }

    string someStr;

    function func(string memory _text) public {
        someStr = _text;
    }

    // calldata is cheaper read-only
    function calldataEx(string calldata _readOnlyText) public {
        someStr = _readOnlyText;
    }

}