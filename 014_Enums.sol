// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

enum WorksOutsideContractsToo {
    val1,
    val2,
    val3
}

contract Enum {
    enum Status {
        Pending,        //0
        Shipped,        //1
        Accepted,       //2
        Rejected,       //3
        Cancelled       //4
    }

    Status public status;

    function get() public view returns (Status) {
        return status;
    }

    function set(Status _status) public {
        status = _status;
    }

    function cancel() public {
        status = Status.Cancelled;
    }

    function reset() public {
        delete status; //sets to 0 - Pending
    }
}