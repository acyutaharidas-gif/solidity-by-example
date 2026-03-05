// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Constants {
    address public constant OWNER = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    // constants use UPPER CASE convention
    // OWNER = 0x123456789999AaAAbBbbCcccddDdeeeEfFFfCcCc; //will throw error.

    uint256 private constant FIXED_NUMBER = 9;
}