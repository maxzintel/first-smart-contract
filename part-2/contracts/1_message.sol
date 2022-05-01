// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.4.17;

contract Inbox {

    string public message;

    constructor(string memory initialMessage) {
        message = initialMessage;
    }

    function setMessage(string memory newMessage) public {
        message = newMessage;
    }

    function doMath(int a, int b) public {
      a + b;
      b - a;
      a * b;
      a == 0;
    }
}