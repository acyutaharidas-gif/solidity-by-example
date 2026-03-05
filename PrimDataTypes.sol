// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Primitives {
    uint8 public unsignedInteger8bitMin = type(uint8).min;
    uint8 public unsignedInteger8bitMax = type(uint8).max;

    uint256 public unsignedInteger256bitMin = type(uint256).min;
    uint256 public unsignedInteger256bitMax = type(uint256).max;

    int8 public signedInteger8bitMin = type(int8).min;
    int8 public signedInteger8bitMax = type(int8).max;

    int256 public signedInteger256bitMin = type(int256).min;
    int256 public signedInteger256bitMax = type(int256).max;

    bytes public a = hex"ab";
}