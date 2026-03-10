// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Events {
    event CoolEventToEmit(string message);

    function fun() public {
        emit CoolEventToEmit("Cool event emitted!");
    }

    /**
     * Up to 3 parameters can be indexed.
     * Indexed parameters help you filter the logs by the indexed parameter
     */
}
