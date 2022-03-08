// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.12;

contract Ownable {
    address payable _owner;

    constructor() {
        _owner = payable(msg.sender); 
    }
    
    modifier onlyOwner() {
        require(isOwner(), "You are not the owner");
        _;
    }

    function isOwner() public view returns(bool) {
        return (msg.sender == _owner);
    }

}