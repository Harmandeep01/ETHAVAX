
# GCD (Greatest Common Divisor) Contract

This Solidity contract provides a function to calculate the Greatest Common Divisor (GCD) of two non-negative integers using the Euclidean algorithm. The contract includes input validation and internal checks to ensure correct operation.

## Contract Overview

The `GCD` contract contains a single function, `gcd`, which calculates the GCD of two unsigned integers. The function employs the Euclidean algorithm and includes error handling to validate inputs and ensure the correctness of the results.

## Functions

### `gcd(uint a, uint b) -> uint`

This function calculates the GCD of two unsigned integers, `a` and `b`.

#### Parameters:

- `a` (uint): A positive integer greater than 0.
- `b` (uint): A non-negative integer (can be 0).

#### Returns:

- (uint): The GCD of `a` and `b`.

#### Error Handling:

- `require(a > 0, "Input a must be greater than 0");`
  - Ensures that `a` is a positive integer greater than 0.
- `require(b >= 0, "Input b must be non-negative");`
  - Ensures that `b` is a non-negative integer.
- `assert(result > 0);`
  - Ensures that the result is always greater than 0, which should be true in a correct implementation.

#### Example Usage:

```solidity
uint result = gcd(48, 18); // result will be 6
```

## Usage

To use the `GCD` contract, deploy it to the Ethereum blockchain using your preferred method (e.g., Remix, Truffle, Hardhat). After deployment, you can call the `gcd` function with the desired inputs to calculate the GCD.

### Example Deployment and Function Call

1. **Deploy the Contract**:
   - Use Remix or another Ethereum development environment to deploy the `GCD` contract.

2. **Call the `gcd` Function**:
   - After deployment, call the `gcd` function with two integers to get the GCD.

### Example:

```solidity
GCD gcdContract = new GCD();
uint result = gcdContract.gcd(48, 18); // result will be 6
```

## Development

To contribute to this project, clone the repository and make changes as needed. Ensure that you test the contract thoroughly, especially focusing on edge cases and input validation.

### Prerequisites:

- Solidity compiler version ^0.8.9

### Compile and Deploy:

1. Compile the contract using a Solidity compiler.
2. Deploy the contract to a local or test Ethereum network.
3. Interact with the contract using a tool like Remix, Truffle, or Hardhat.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

**Note**: This contract is designed for educational purposes. Ensure you understand the code and test thoroughly before deploying to a production environment.
