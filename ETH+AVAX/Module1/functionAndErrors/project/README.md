
# Restaurant Loyalty Program Smart Contract

This smart contract implements a basic loyalty program for a restaurant, allowing customers to earn and redeem tokens (HRT).

## Contract Details

- **Name**: Hermann Restaurant Loyalty Program
- **Symbol**: HRT
- **Total Supply**: Defined at deployment
- **Owner**: The account that deploys the contract

## Functionality

### State Variables

- `string public name`: Name of the loyalty program.
- `string public symbol`: Symbol for the tokens.
- `uint256 public totalSupply`: Total supply of tokens.
- `address public owner`: Address of the contract owner.
- `mapping(address => uint256) public balanceOf`: Mapping to keep track of balances.

### Events

- `event Transfer(address indexed from, address indexed to, uint256 value)`: Emitted when tokens are transferred.
- `event RewardRedeemed(address indexed customer, string reward, uint256 cost)`: Emitted when a reward is redeemed.

### Modifiers

- `modifier onlyOwner()`: Restricts access to the contract owner.

### Functions

#### Constructor

```solidity
constructor(uint256 _initialSupply)
```
Initializes the contract, setting the initial supply and assigning all tokens to the owner.

#### Transfer

```solidity
function transfer(address _to, uint256 _value) public returns (bool success)
```
Transfers `_value` tokens from the caller to `_to`.

#### Issue Tokens

```solidity
function issueTokens(address _to, uint256 _value) public onlyOwner returns (bool success)
```
Issues `_value` new tokens to `_to`. Only the owner can call this function.

#### Redeem Reward

```solidity
function redeemReward(address _customer, string memory _reward, uint256 _cost) public onlyOwner returns (bool success)
```
Redeems `_cost` tokens from `_customer` for a specified `_reward`. Only the owner can call this function.

## Deployment

To deploy this contract, you will need:

1. An Ethereum wallet with sufficient funds for gas fees.
2. A tool like Remix, Truffle, or Hardhat to deploy the contract.

### Example Deployment with Remix

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Create a new file and paste the smart contract code.
3. Compile the contract.
4. Deploy the contract, specifying the initial token supply.

## Usage

1. **Transfer Tokens**: Call the `transfer` function with the recipient address and amount.
2. **Issue Tokens**: As the owner, call the `issueTokens` function with the recipient address and amount.
3. **Redeem Rewards**: As the owner, call the `redeemReward` function with the customer address, reward description, and token cost.

## License

This project is licensed under the MIT License.
