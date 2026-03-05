// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Immutable {
    address private immutable owner;
    uint256 private immutable immutable_number;

    constructor() {
        owner = msg.sender;
        immutable_number = 9;
    }
}