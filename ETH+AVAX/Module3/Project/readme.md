
# MyToken - ERC20 Token with Custom Functions

## Overview

**MyToken** is a custom ERC20 token based on the OpenZeppelin framework. It includes the following features:
- Minting: The owner of the contract can mint new tokens.
- Explicit Transfer: A custom function to transfer tokens between addresses.
- Burning: Token holders can burn (destroy) their tokens, reducing the total supply.

## Contract Details

- **Token Name**: Hermann
- **Token Symbol**: HDP
- **Standard**: ERC20

## Features

1. **Minting**
   - The owner can mint new tokens to a specified address.
   - The minting function ensures only the contract owner can mint tokens.
   - The minted tokens are added to the recipient's balance.

2. **Explicit Transfer**
   - A custom transfer function that allows users to transfer tokens to another address.
   - The function checks if the sender has sufficient balance before transferring.
   - After the transfer, the function ensures that the balance has been correctly updated.

3. **Burning**
   - A custom burn function that allows token holders to burn their tokens.
   - The burned tokens are deducted from the sender's balance without being added to any other account.
   - The function ensures that the balance has been correctly updated after burning.



## Installation

To use this contract in your project, include the following dependencies in your `hardhat` or `truffle` project:

```bash
npm install @openzeppelin/contracts
```

## Usage

Deploy the contract and interact with the functions using the following guidelines:

1. **Minting Tokens**
   - Only the owner can call the `mint` function to create new tokens.
   - Example:
     ```solidity
     MyToken.mint(0xRecipientAddress, 1000);
     ```

2. **Explicit Transfer**
   - Any token holder can transfer their tokens using the `explicitTransfer` function.
   - Example:
     ```solidity
     MyToken.explicitTransfer(0xRecipientAddress, 100);
     ```

3. **Burning Tokens**
   - Token holders can burn their tokens using the `burnTokens` function.
   - Example:
     ```solidity
     MyToken.burnTokens(50);
     ```


## Author

- **Name**: Harmandeep
- **Email**: [sharmandeep954@gmail.com](sharmandeep954@gmail.com)
- **GitHub**: [https://github.com/Harmandeep01](https://github.com/Harmandeep01)
- **LinkedIn**: [https://www.linkedin.com/in/harmandeep-87032918b/](https://www.linkedin.com/in/harmandeep-87032918b/)

## License

This project is licensed under the [MIT](https://github.com/git/git-scm.com/blob/main/MIT-LICENSE.txt) License.
