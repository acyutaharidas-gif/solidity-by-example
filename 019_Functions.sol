// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Function {
    function returnMany() public pure returns (uint256, bool, uint256, string memory){
        return (1, true, 1, "hello");
    }

    function assigned() public pure returns (uint256 x, bool val, uint256 y, string memory text) {
        x = 5;
        val = false;
        y = 2;
        text = "gello";
    }

    function destructuring() public pure returns(uint256, bool, uint256, string memory text, bool) {
        (uint256 a, bool b, uint256 c, string memory d) = returnMany();
        (bool val, ) = (true, 5);
        return (a,b,c,d,val);
    }

    // cannot use a map for input/output

    function arrFunc(uint256[] calldata _arr) public pure returns(uint256[] calldata) {
        return _arr;
    }

    function arrFunc2(uint256[] memory _arr) public pure returns(uint256[] memory) {
        return _arr;
    }
}

contract XYZ {
    function foo(uint256 x, bool y, string memory z, address a) public returns(address) {}

    function bar() public returns(address) {
        return foo({
            a: address(0),
            y: true,
            x: 12,
            z: "calling function with key-value pairs!"
        });
    }
}