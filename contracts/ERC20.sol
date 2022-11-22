// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DaveToken is ERC20Capped, Pausable, Ownable {

    constructor(uint256 cap) ERC20("DaveToken", "DAVE") ERC20Capped(cap){}
    
    function mint( uint256 amount) public onlyOwner {
        _mint(msg.sender, amount);
    }
}
