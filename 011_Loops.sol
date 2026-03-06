// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Loop {
    function bar() public pure {
        for(uint i=0; i < 10; i++){
            if(i == 5) {
                continue;
            }

            if(i == 9) {
                break;
            }
        }

        uint j = 0;
        while(j < 10) {
            j++;
        }

        uint k = 10;
        do {
            k--;
        } while (k > 0);
    }
}