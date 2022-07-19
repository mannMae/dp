// SPDX - License-Identifier: MINT

pragma solidity ^0.8.0;

import "./node_modules/@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract MintAnimalToken is ERC721Enumerable {
    constructor() ERC721("name", "symbol") {}

    function mintAnimalToken() public {
        uint256 animalTokenId = totalSupply() +1;
        _mint(msg.sender, animalTokenId);
    }
}