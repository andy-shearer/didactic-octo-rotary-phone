// SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.12;

contract Arrays {
    uint[] lemons; // dynamic
    uint[] oranges = [1,2,3,4,5]; // initialised in declaration
    uint[2] apples; // fixed size

    function getOranges (uint index) public view returns (uint _orange) {
        _orange = oranges[index];
    }

    function appendOranges (uint item) public {
        oranges.push(item);
    }

    function removeLastOrange() public returns (uint) {
        uint popped = oranges[oranges.length - 1];
        oranges.pop();
        return popped;
    }

    // Remove the orange at the specified index, returning it. Re-organises the array so that gaps are avoided
    function removeOrange(uint index) public returns (uint) {
        uint removed = getOranges(index);
        oranges[index] = oranges[oranges.length - 1];
        oranges.pop();
        return removed;
    }

    // Deletes the orange at the specified index, but doesn't change the length of the array. Returns array length
    function deleteOrange(uint index) public returns (uint){
        delete oranges[index];
        return lengthOfOranges();
    }

    function lengthOfOranges() public view returns (uint) {
        return oranges.length;
    }
}
