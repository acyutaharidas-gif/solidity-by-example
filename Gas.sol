// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Gas {
    /**
     * How much ether do you need to pay for a transaction?
     * You pay gas spent * gas price amount of ether, where
     * 
     * gas is a unit of computation
     * gas spent is the total amount of gas used in a transaction
     * gas price is how much ether you are willing to pay per gas
     * 
     * Transactions with higher gas price have higher priority to be included in a block.
     * Unspent gas will be refunded.
     */

    /**
     * gas limit (max amount of gas you're willing to use for your transaction, set by you)
     * block gas limit (max amount of gas allowed in a block, set by the network)
     */
}