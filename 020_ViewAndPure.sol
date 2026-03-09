// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/**
 * View function declares that no state will be changed.
 * Pure function declares that no state variable will be changed or read.
 */

contract ViewAndPure {
    uint x;
    function vFunc() public view returns (uint) {
        return x;
    }

    function pFunc() public pure returns (uint) {
        uint y = 5;
        (uint v,) = (y,3);
        return v;
    }
}