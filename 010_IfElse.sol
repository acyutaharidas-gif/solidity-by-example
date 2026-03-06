// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract IfElse {
    function ifElseConditionals(uint256 _num) public pure returns(int256){
        if(_num % 2 == 0) {
            return 1;
        } else if (_num % 2 != 0) {
            return 0;
        } else {
            return -1;
        }
    }

    function ternaryCheck(uint256 _num) public pure returns (bool) {
        bool isTrue = _num > 5 ? true : false;
        return isTrue;
    }
}