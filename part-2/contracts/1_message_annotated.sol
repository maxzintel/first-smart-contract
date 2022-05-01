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
    // ^ public function is automatically created. Making getMessage superfluous.

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

    // each mathematical function costs gas per eth yellow paper spreadsheet.
    // https://docs.google.com/spreadsheets/d/1n6mRqkBz3iWcOlRem_mO09GtSKEKrAsfO7Frgx18pNU/edit#gid=0
   function doMath(int a, int b) public {
      a + b; // 3 * 10 = 30 wei
      b - a; // 3 * 10 = 30 wei
      a * b; // 5 * 10 = 50 wei
      a == 0; // 3 * 10 = 30 wei
    //   total 14 gas = 140 wei
    }
}