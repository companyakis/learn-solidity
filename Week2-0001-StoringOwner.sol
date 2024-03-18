/*
Your Goal: Store the Owner
Create a public address state variable called owner on the contract
Next create a constructor function which will store the msg.sender in owner
*/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    address public owner;

    constructor() {
        owner = msg.sender;
    }
    
}


/*
An address on the EVM is a 160 bits long, or a 40 character, hexadecimal string:

address a = 0xc783df8a850f42e7f7e57013759c285caa701eb6;

This is valid Solidity! We can store a fixed address in our contracts if we need to.

We can also find the sender of the current message:

import "forge-std/console.sol";
contract Example {
    constructor() {
        console.log( msg.sender ); // 0xc783df8a850f42e7f7e57013759c285caa701eb6
    }
}

 Here we are logging the address of the account calling this contract.

*/
