// SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.12;

contract Functions {
    function returnKeywordOmitted () public view returns (string memory message, uint luckyNumber, address caller) {
        message = "This is being returned";
        luckyNumber = 9;
        caller = msg.sender;
    }

    function returnInline () public view returns (string memory, uint, address) {
        return ("This is all being done inline", 59, msg.sender);
    }

    function destructuringReturns() public view returns (uint){
        (,uint lucky,) = returnInline();
        return lucky;
    }
}
