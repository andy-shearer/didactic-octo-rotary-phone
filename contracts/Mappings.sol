// SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.12;

contract Mappings {
    mapping(string => uint) public myMap ;

    function addEntry(string calldata _key, uint _val) public {
        myMap[_key] = _val;
    }

    function removeEntry(string calldata _key) public {
        delete myMap[_key];
    }
}
