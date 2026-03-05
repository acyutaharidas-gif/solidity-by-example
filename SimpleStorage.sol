// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SimpleStorage {
    uint256 private num; 

    // writing/updating state variables requires transaction (paid with ether)
    function set(uint256 _num) public {
        num = _num;
    }

    // reading (view functions) dont require transaction
    function get() public view returns(uint256) {
        return num;
    }
}