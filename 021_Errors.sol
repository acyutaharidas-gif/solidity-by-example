// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/**
 * require is used to validate inputs and conditions before execution.
 * revert is similar to require. See the code below for details.
 * assert is used to check for code that should never be false. Failing assertion probably means that there is a bug.
 *
 * Use custom error to save gas.
 */

contract Errors {
    error Error__CustomErrorsSaveGas();

    function func() public pure {
        if (1 != 2) {
            revert Error__CustomErrorsSaveGas();
        }
    }
}
