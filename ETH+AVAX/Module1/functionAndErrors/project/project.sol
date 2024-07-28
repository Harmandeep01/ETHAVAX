// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract GCD {

    function gcd(uint a, uint b) public pure returns (uint) {
        require(a > 0, "Input a must be greater than 0");
        require(b >= 0, "Input b must be non-negative");

        if (b == 0) {
            return a;
        } else {
            uint result = gcd(b, a % b);
            assert(result > 0);
            return result;
        }
    }
}