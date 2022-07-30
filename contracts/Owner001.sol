//SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "hardhat/console.sol";

contract Owner001 {

    address public owner;

    constructor () {
        owner = msg.sender;
        console.log("Checking the contract by owner = ", owner);
    }

}