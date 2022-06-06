pragma solidity ^0.8.9;
// linter warnings (red underline) about pragma version can ignored!

// contract code will go here
// SPDX-License-Identifier: GPL-3.0
contract Inbox {

    string public message;

    constructor(string memory initialMessage) {
        message = initialMessage;
    }

    function setMessage(string memory newMessage) public {
        message = newMessage;
    }
}

