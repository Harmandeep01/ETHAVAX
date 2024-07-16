// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleToken {
    string public name = "Hermann";
    string public symbol = "HTK";
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;

    address public owner;

    event Transfer(address indexed from, address indexed to, uint256 value);

    constructor(uint256 _initialSupply) {
        owner = msg.sender;
        totalSupply = _initialSupply;
        balanceOf[msg.sender] = totalSupply;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(_to != address(0), "Invalid address");
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function mint(uint256 _amount) public onlyOwner {
        require(_amount > 0, "Mint amount should be greater than zero");

        totalSupply += _amount;
        balanceOf[owner] += _amount;
        emit Transfer(address(0), owner, _amount);
    }

    function burn(uint256 _amount) public {
        require(_amount > 0, "Burn amount should be greater than zero");
        require(balanceOf[msg.sender] >= _amount, "Insufficient balance to burn");

        balanceOf[msg.sender] -= _amount ;
        totalSupply -= _amount ;
        emit Transfer(msg.sender, address(0), _amount);
    }

    function emergencyWithdraw() public onlyOwner {
        uint256 contractBalance = address(this).balance;
        assert(contractBalance > 0); // Ensure the contract has balance
        payable(owner).transfer(contractBalance);
    }

    receive() external payable {
        revert("Do not send ETH directly to this contract");
    }
}
