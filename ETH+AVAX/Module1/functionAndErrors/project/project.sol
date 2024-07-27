// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RestaurantLoyalty {
    string public name = "Restaurant Loyalty Program";
    string public symbol = "HRT";
    uint256 public totalSupply;
    address public owner;

    mapping(address => uint256) public balanceOf;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event RewardRedeemed(address indexed customer, string reward, uint256 cost);

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    constructor(uint256 _initialSupply) {
        owner = msg.sender;
        totalSupply = _initialSupply;
        balanceOf[owner] = totalSupply;
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function issueTokens(address _to, uint256 _value) public onlyOwner returns (bool success) {
        require(totalSupply + _value <= type(uint256).max, "Total supply exceeded");
        totalSupply += _value;
        balanceOf[_to] += _value;
        emit Transfer(address(0), _to, _value);
        return true;
    }

    function redeemReward(address _customer, string memory _reward, uint256 _cost) public onlyOwner returns (bool success) {
        require(balanceOf[_customer] >= _cost, "Insufficient tokens");
        balanceOf[_customer] -= _cost;
        balanceOf[owner] += _cost;
        emit RewardRedeemed(_customer, _reward, _cost);
        return true;
    }
}