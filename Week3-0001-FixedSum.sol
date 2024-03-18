/*
Your Goal: Find the Sum
Create a pure, external function sum which takes a fixed size array of five unsigned integers.
Find the sum of the unsigned integers and return it as a uint.
*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {

    function sum(uint[5] memory a) external pure returns(uint) {
        uint array_sum = 0;
        for (uint i = 0; i < 5; i++) {
            array_sum += a[i];
        }
        return array_sum; 
    }
    
}
