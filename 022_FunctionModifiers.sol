// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract FunctionModifier {
    address immutable i_owner;

    constructor() {
        i_owner = msg.sender;
    }

    function test() public ownerOnly {
        // only owner can access test
    }

    modifier ownerOnly() {
        if (msg.sender != i_owner) {
            revert("Not Authorized");
        }
        _;
    }
}

contract ReentrancyGuard {
    bool public locked;

    modifier noReentrancy() {
        require(!locked, "No reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function test() public noReentrancy {
        // function cannot be also while executing because of the modifier
    }
}
