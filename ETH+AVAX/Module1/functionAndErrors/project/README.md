# Grades Smart Contract

## Overview

The `Grades` smart contract is designed to calculate and store grades based on the total marks provided. It assigns grades and emits remarks based on predefined conditions. The contract is written in Solidity and is compatible with Solidity version ^0.8.9.

## Features

- Calculates grades based on the total marks provided (between 1 and 100).
- Stores the calculated grade.
- Emits remarks for certain grade ranges to provide feedback.

## Running the Contract

You can run and interact with this smart contract using Remix IDE, a powerful online tool for developing, deploying, and managing Ethereum-based smart contracts.

### Steps to Run in Remix IDE

1. **Open Remix IDE**:
   - Go to [Remix IDE](https://remix.ethereum.org/).

2. **Create a New File**:
   - In the file explorer pane, click on the `+` icon to create a new file.
   - Name the file `Grades.sol`.

3. **Copy the Contract Code**:
   - Copy the Solidity code *from above file: Grades.sol* and paste it into [Remix IDE](https://remix.ethereum.org/)

4. **Compile the Contract**:
   - Select the `Solidity Compiler` from the left pane.
   - Ensure the compiler version is set to `0.8.9`.
   - Click on the `Compile Grades.sol` button.

5. **Deploy the Contract**:
   - Select the `Deploy & Run Transactions` option from the left pane.
   - Choose `Injected Web3` as the environment if you want to use a web3 provider like MetaMask, or `JavaScript VM` for a local simulation.
   - Click on the `Deploy` button.

6. **Interact with the Contract**:
   - After deployment, you can interact with the contract functions from the deployed contract section in Remix.
   - Use the `gradeCalculate` function to calculate grades by providing total marks as input.

## Contract Details

### Solidity Version

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
```

### Contract: Grades

#### Events

- `remarks(string log)`: Emitted when certain grade conditions are met, providing feedback.

#### State Variables

- `string public Grade`: Stores the calculated grade. Initially set to "No Grades yet!".

#### Functions

- `function gradeCalculate(uint256 totalMarks) public returns (string memory)`: 
  - Calculates the grade based on the total marks provided.
  - Validates that the total marks are between 1 and 100.
  - Assigns and returns a grade based on the following conditions:
    - `<= 32`: "fail! Better Luck"
    - `33 - 55`: "D"
    - `56 - 75`: "C"
    - `76 - 89`: "B"
    - `>= 90`: "A"
  - Emits a remark for grades "D", "C", "B", and "A".

## Example

To calculate a grade, call the `gradeCalculate` function with the total marks as an argument. For example:

```solidity
Grades grades = new Grades();
string memory grade = grades.gradeCalculate(85);
```

This will set the `Grade` variable to "B" and emit the remark "Well done, Keep it up".

## License

This project is licensed under the MIT License. See the LICENSE file for details.

Created by [@Harmandeep01](https://github.com/Harmandeep01/) with the help of [@Metacrafters](https://academy.metacrafters.io/)

Reachout by [email](sharmandeep954@gmail.com) OR [LinkedIn](https://www.linkedin.com/in/harmandeep-87032918b/)

