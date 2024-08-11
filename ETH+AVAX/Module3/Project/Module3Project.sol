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

    event Burn(address indexed burner, uint256 value);
    mapping (address => uint) balances;
    
    function mint(address to, uint256 amount) public onlyOwner {
    require(msg.sender == owner(), "Only the owner can mint tokens");
    balances[to] += amount;
}

    function checkbalance(address _address) external view returns (uint256){
        uint256 balance = balances[_address];
        return balance;
    }
    //Expicitly added the Transfer() Function
    function explicitTransfer(address _to, uint256 value) external {
    require(balances[msg.sender] >= value, "Insufficient Funds to Transfer");

    uint256 FromBalanceBefore = balances[msg.sender]; // Store balance before deduction

    balances[msg.sender] -= value;               // Deduct the tokens from sender
    balances[_to] += value;                      // Add the tokens to the recipient

    assert(FromBalanceBefore - value == balances[msg.sender]); // Check the balance after deduction

    emit Transfer(msg.sender, _to, value);
}

    //Expicitly added the Burn() Function
    function burnTokens(uint256 value) external {
    require(balances[msg.sender] >= value, "Insufficient Funds to Transfer");

    uint256 FromBalanceBefore = balances[msg.sender]; // Store balance before deduction

    balances[msg.sender] -= value;               // Deduct the tokens from sender
    //Not adding the balance to any account, beacuse we are burning i.e destroying .

    assert(FromBalanceBefore - value == balances[msg.sender]); // Check the balance after deduction

    emit Burn(msg.sender, value);
}

}