// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract PrimalCoin is ERC20 {
    uint256 public tokenPrice = 1000000000000000;

    constructor() ERC20("PrimalCoin", "PMC") {
        _mint(msg.sender, 1000000 * 10**18);
    }

    function buyToken(uint256 amount) public payable {
        uint256 tokens = amount / tokenPrice;
        _mint(msg.sender, tokens * 10**18);
    }
}
