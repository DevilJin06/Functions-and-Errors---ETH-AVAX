//write a smart contract that implements the require(), assert() and revert() statements.
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract SmartContract {
    uint256 public value;

    function setValue(uint256 _value) public {
        // Using require() to check if the input value is greater than 0
        require(_value > 0, "Value must be greater than 0");
        value = _value;
    }

    function divideByTwo() public {
        // Using assert() to ensure that the value is even
        assert(value % 2 == 0);
        value /= 2;
    }

    function withdrawFunds(uint256 amount) public {
        // Using revert() to check if the requested amount is greater than the available balance
        if (amount > value) {
            revert("Insufficient funds");
        }
        value -= amount;
    }
}
