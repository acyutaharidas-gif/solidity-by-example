// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Variables {
    // local variables
    string public text = "Hello World";
    uint256 private number = 928348924;

    function func() public view {
        // state variables
        string memory test = "hello from a function";
        
        // global variables
        address sender = msg.sender;
        uint256 timestamp = block.timestamp;
        // block.chainid ...
    }
}