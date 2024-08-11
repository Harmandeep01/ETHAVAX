// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;


import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract MyToken is ERC20,ERC20Burnable, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("Hermann", "HDP")
        Ownable(initialOwner)
        ERC20Permit("Hermann")
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        require(msg.sender == owner(), "Only the owner can mint tokens");
       _mint(to, amount);
    }

}