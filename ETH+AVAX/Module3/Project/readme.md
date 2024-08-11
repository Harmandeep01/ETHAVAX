
# MyToken (HDP)

`MyToken` is an ERC-20 token contract named "Hermann" with the symbol "HDP." The contract allows the owner to mint new tokens, and any user can burn and transfer their tokens. It also supports ERC-20 standard token transfers and includes additional features such as permit-based approvals.

## Features

- **ERC-20 Standard:** Implements the standard ERC-20 interface.
- **Minting:** Only the contract owner can mint new tokens.
- **Burning:** Any user can burn their own tokens.
- **Permit:** Supports off-chain approvals via ERC-2612 permits.

## Contract Details

- **Name:** Hermann
- **Symbol:** HDP
- **Decimals:** 18 (default for ERC-20)
- **Total Supply:** Dynamically managed through minting and burning.

## Functions

### `mint(address to, uint256 amount)`

- **Description:** Mints new tokens and assigns them to the specified address. This function can only be called by the contract owner.
- **Parameters:**
  - `to`: The address to which the minted tokens will be assigned.
  - `amount`: The number of tokens to mint.

### `burn(uint256 amount)`

- **Description:** Burns a specified number of tokens from the caller's balance.
- **Parameters:**
  - `amount`: The number of tokens to burn.

### `transfer(address recipient, uint256 amount)`

- **Description:** Transfers tokens to a specified address. This function is inherited from the ERC-20 standard.
- **Parameters:**
  - `recipient`: The address to which the tokens will be sent.
  - `amount`: The number of tokens to transfer.

## Usage

### Deployment

To deploy the contract:

- Add the `initialOwner` address inside the field and HIT the deploy button.

``N O T E : `` *The address you enter for the initialOwner will be the owner of the deployed contract; you can change that later by using OpenZeppelin functions*.

`Enjoy! Your Contract is deployed`

### Minting Tokens

Only the owner can mint tokens:

- Select `mint` , add the address in `to` field and Value in `amount` field then `transact` .

### Transfer 
- Add the address `to` which we want to transfer inside `to` field and value inside `value` field and hit `transact`
### Burning Tokens

Any user can burn their tokens:

- Select the `Burn` function and add the Value. 

## Author

- **Name**: Harmandeep
- **Email**: [sharmandeep954@gmail.com](sharmandeep954@gmail.com)
- **GitHub**: [https://github.com/Harmandeep01](https://github.com/Harmandeep01)
- **LinkedIn**: [https://www.linkedin.com/in/harmandeep-87032918b/](https://www.linkedin.com/in/harmandeep-87032918b/)

Feel free to reach out for any questions or collaborations!

## License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/git/git-scm.com/blob/main/MIT-LICENSE.txt) file for details.

