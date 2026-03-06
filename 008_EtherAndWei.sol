// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract EtherUnits {
    // 1 eth = 10e18 Wei
    // 1 gwei = 10e9 wei

    uint256 private eth;

    constructor() {
        eth = 1 ether;      //1000000000000000000
        eth = 10 ** 18;     //1000000000000000000
        eth = 1e18;         //1000000000000000000
    }
}
