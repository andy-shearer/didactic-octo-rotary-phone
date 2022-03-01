// SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.12;

contract Numbers {
    uint num;

    function readNum() public view returns (uint) {
        return num;
    }

    function incrementAndReadNum() public returns (uint) {
        num++;
        return num;
    }

    function setNum(uint newVal) public returns (uint) {
        num = newVal;
        return num;
    }

    function classifyValue(uint value) public pure returns (uint) {
        return value < 10 ? 1 : 2;
    }
}
