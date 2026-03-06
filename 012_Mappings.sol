// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mappings {
    /**
     * mapping(keyType => valueType)
     * The keyType can be any built-in value type, bytes, string, or any contract.
     * valueType can be any type including another mapping or an array.
     */

    mapping (address => uint) map;

    function getUintValue(address _addr) public view returns(uint) {
        return map[_addr];
    }

    function setUintValue(address _addr, uint _value) public {
        map[_addr] = _value;
    }

    function deleteOrReset(address _addr) public {
        // map[_addr] = 0; 
        // or
        delete map[_addr];
    }
}

contract NestedMappings {
    /**
     * address is keytype
     * valuetype is another mapping in which uint256 is keytype and valuetype is bool
     */
    mapping (address => mapping (uint256 => bool)) nestedMap;

    function get(address _addr, uint _i) public view returns (bool) {
        return nestedMap[_addr][_i];
    }

    function set(address _addr, uint _i, bool _bool) public {
        nestedMap[_addr][_i] = _bool;
    }

    function remove(address _addr, uint _i) public {
        delete nestedMap[_addr][_i];
    }
}