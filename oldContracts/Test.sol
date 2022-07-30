//SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "hardhat/console.sol";

contract Test {

    uint256 counter;
    address public owner;

    constructor() {
        owner = msg.sender;
        console.log("Hello World, checking the contract!");
    }

    function increaseCounter() public {
        counter += 1;
        console.log ("The owner ", owner, "Just increase the counter");
        console.log ("Counter = ", counter);
    }
}