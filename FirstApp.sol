// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Counter {
    uint256 private counter = 0;

    function increment() public {
        counter++;
    }

    function decrement() public {
        counter--;
    }

    function getCounter() public view returns (uint256) {
        return counter;
    }
}
