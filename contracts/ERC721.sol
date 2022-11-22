// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract DaveNft is ERC721 {

    uint32 public max_tokens = 1000000;

    uint32 public current_mint_count = 0;


    constructor(uint256 cap) ERC721("DaveNFT", "DNFT") {

    }
    
    function mint() payable  public  {
        require(max_tokens >= current_mint_count, "No more NFTs");
        _mint(msg.sender, 1);
        current_mint_count+=1;
    }
}
