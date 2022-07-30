// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Lottery001 is Ownable {

    uint8 public pool;
    uint public price = 1 ether;
    address[] players;

    constructor() {
        pool = 0;
    }

    function makeABet () payable public {
        require (msg.value == price, "The bet is 1 ether. Please ");
        (bool success, ) = payable(owner()).call{value: msg.value}("");
        require(success, "failed");
        players.push(msg.sender);
        pool++;
    }

    function lotteryDraw() public payable returns (uint8, address) {

        payable(players[2]).transfer(pool);
        return (pool, msg.sender);
    }

    function getPlayers() public view onlyOwner returns(address[] memory, uint){
        return (players, pool);

    }

}