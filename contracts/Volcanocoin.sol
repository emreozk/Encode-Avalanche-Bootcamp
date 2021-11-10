// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract VolcanoCoin {
    uint256 tokenSupply = 10000;
    address owner;
}

    modifier onlyOwner {
        if (msg.sender == owner) {
            _;
        }
    }
    
    function getTokenSupply() public view returns (uint256) {
        return tokenSupply;
    }

    function increaseSupply() public onlyOwner {
        tokenSupply += 1000;
        emit TokenSupplyChange(tokenSupply);
    }

