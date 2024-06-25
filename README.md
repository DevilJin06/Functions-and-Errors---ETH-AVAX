
# Smart Contract

This is an example smart contract that demonstrates the usage of `require()`, `assert()`, and `revert()` statements in Solidity.

### Contract Overview

The `SmartContract` contract has the following functionality:

1. `setValue(uint256 _value)`: Sets the `value` state variable to the provided `_value`. It uses `require()` to ensure that the input value is greater than 0.
2. `divideByTwo()`: Divides the `value` state variable by 2. It uses `assert()` to ensure that the `value` is even before performing the division.
3. `withdrawFunds(uint256 amount)`: Withdraws the specified `amount` from the contract's `value`. It uses `revert()` to check if the requested amount is greater than the available balance.

### Usage

1. Deploy the `SmartContract` contract to your Ethereum network of choice.
2. Call the `setValue()` function to set the initial value of the contract.
3. Call the `divideByTwo()` function to divide the `value` by 2.
4. Call the `withdrawFunds()` function to withdraw a specified amount from the contract's balance.

### Error Handling

The contract uses the following error handling mechanisms:

1. `require()`: Checks if the input value is greater than 0 in the `setValue()` function. If the condition is not met, the function will revert with the error message "Value must be greater than 0".
2. `assert()`: Ensures that the `value` is even in the `divideByTwo()` function. If the condition is not met, the function will revert with an error message indicating an invalid state.
3. `revert()`: Checks if the requested withdrawal amount is greater than the available balance in the `withdrawFunds()` function. If the condition is not met, the function will revert with the error message "Insufficient funds".

### Dependencies

This contract is written in Solidity version ^0.8.9.

### License

This project is licensed under the [MIT License](LICENSE).
