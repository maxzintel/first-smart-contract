// SPDX-License-Identifier: GPL-3.0

// specifies the version of solidity that our code is written in.
pragma solidity >0.4.17;

// Defines a new contract (class) that will have some number of methods and vars.
// Contract == Class in JS. Thus multiple instances of the contract may be deployed at any given time.
contract Inbox {

    // Declares all of the instance variables and their types that will exist in the contract.
    // Instance variables are around for the life of the contract.
    // String == Type.
    // This is a Storage Variable == A var that will be automatically stored with the contract on the blockchain. For all eternity!
    string public message; // string type, public = accessible to everyone in the world.

    // Below are the functions that will be members of the contract.

    // A constructor is just a function that is automatically run once when the contract is created.
    constructor(string memory initialMessage) {
        message = initialMessage;
    }

    // Normal functions are functions we can optionally call after the contract has been deployed to the blockchain.

    //                can be called with this arg.
    function setMessage(string memory newMessage) public {
        message = newMessage; // accesses the argument with this var.
    }

    //       fnc name     fnc type    return types
    function getMessage() public view returns (string memory) {
        return message;
    }
}