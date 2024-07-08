
# SimpleToken Smart Contract

This is a simple Ethereum smart contract written in Solidity. It demonstrates the use of `require()`, `assert()`, and `revert()` statements. The contract implements a basic token with functionalities such as transferring tokens, minting new tokens, and burning existing tokens.

## Features

- **Transfer tokens**: Allows users to transfer tokens to another address.
- **Mint tokens**: Allows the contract owner to mint new tokens.
- **Burn tokens**: Allows users to burn their own tokens.
- **Emergency Withdraw**: Allows the contract owner to withdraw the contract's balance in case of emergency.

## Statements Used

- **require()**: Used to validate conditions and inputs.
- **assert()**: Used to check for conditions that should never fail.
- **revert()**: Used to stop execution and revert state changes.

## Functions

### `constructor(uint256 _initialSupply)`

- Initializes the contract with an initial supply of tokens.
- The total supply is assigned to the contract deployer's address.

### `transfer(address _to, uint256 _value)`

- Transfers `_value` tokens from the caller's address to `_to`.
- Requires that `_to` is a valid address and the caller has sufficient balance.

### `mint(uint256 _amount)`

- Mints `_amount` new tokens and assigns them to the contract owner.
- Can only be called by the contract owner.

### `burn(uint256 _amount)`

- Burns `_amount` tokens from the caller's address.
- Requires that the caller has sufficient balance.

### `emergencyWithdraw()`

- Transfers the contract's balance to the owner.
- Can only be called by the contract owner.
- Uses `assert` to ensure the contract has a balance before the transfer.

## Modifiers

### `onlyOwner()`

- Restricts the execution of certain functions to the contract owner.

## Events

### `Transfer(address indexed from, address indexed to, uint256 value)`

- Emitted when tokens are transferred from one address to another.

## Error Handling

- **Invalid address**: Transfers to the zero address are not allowed.
- **Insufficient balance**: Transfer and burn operations require sufficient balance.
- **Unauthorized access**: Only the contract owner can mint tokens and withdraw the contract balance.
- **Invalid amount**: Mint and burn operations require the amount to be greater than zero.
- **ETH transfers**: Direct ETH transfers to the contract are reverted.

## Installation

To compile and deploy this contract, follow these steps:

1. Install [Node.js](https://nodejs.org/) and [npm](https://www.npmjs.com/).
2. Install [Truffle](https://www.trufflesuite.com/truffle) globally:
   ```bash
   npm install -g truffle
   ```
3. Clone this repository:
   ```bash
   git clone https://github.com/your-username/simple-token.git
   cd simple-token
   ```
4. Install the dependencies:
   ```bash
   npm install
   ```
5. Compile the contract:
   ```bash
   truffle compile
   ```
6. Deploy the contract:
   ```bash
   truffle migrate
   ```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
