// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Array {
    uint256[] private arr;
    uint256[] private arr2;
    uint256[5] private fixedArr;

    function arraysOperations() public {
        for (uint i = 0; i < 10; i++) {
            arr.push(i);
            arr2.push(2 * i);
            // fixedArr.push(3*i); // will throw eror
            fixedArr[i] = 3 * i; //runtime error: out of bound
        }

        arr.pop(); //reduces array size by 1
        arr2.pop(); // reduces array size by 1
        delete fixedArr; //resets all values to 0 doesnt shrink/reduce array size [0,0,0,0,0]
    }

    function returnArray() public view returns (uint256[] memory) {
        return arr2; //should be avoided
    }

    function bar() public pure {
        // fixed size only in memory
        uint256[] memory a = new uint256[](5);

        a[2] = 6;

        // nested array b = [[1,2,3], [4,5,6,]]
        uint256[][] memory b = new uint256[][](2); //2 rows
        for (uint i = 0; i < b.length; i++) {
            b[i] = new uint256[](3); //3 columns
        }

        b[0][0] = 1;
        b[0][1] = 2;
        b[0][2] = 3;
        b[1][0] = 4;
        b[1][1] = 5;
        b[1][2] = a[2];
    }

    function arrayRemoveElementByLeftShift(uint _index) public {
        // arr is [1,2,3,4,5,6,7,8,9,10]
        // let's say we want to remove a[4] = 5
        for (uint i = _index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1]; //[1,2,3,4,6,7,8,9,10,10]
        }
        arr.pop(); //[1,2,3,4,6,7,8,9,10]
    }

// more gas effecient but order is not preserved
    function remove(uint256 index) public { //[1,2,3,4,5]
        // Move the last element into the place to delete - index 2 -> arr[2] = 3
        arr[index] = arr[arr.length - 1]; //arr[2] = arr[4] -> 1,2,5,4,5
        // Remove the last element
        arr.pop(); //[1,2,5,4]
    }
}