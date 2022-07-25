// SPDX - License-Identifier: MINT

pragma solidity ^0.8.0;

import "./node_modules/@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract MintAnimalToken is ERC721Enumerable {
    constructor() ERC721("name", "symbol") {}

    mapping(uint256 => uint256) public animalTypes;

    function mintAnimalToken() public {
        uint256 animalTokenId = totalSupply() +1;

        uint256 animalType = uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender, animalTokenId))) %5+1;

        animalTypes[animalTokenId] = animalType;

        _mint(msg.sender, animalTokenId);
    }
}