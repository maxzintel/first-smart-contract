// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.4.17;

contract Inbox {
    string public message; // string type, public = accessible to everyone in the world.

    // Explicit data location for all variables of struct, array or mapping types is now mandatory, hence adding the memory bit. This now stores the parameter in local system memory.
    // External Functions require parameters with data location of calldata.
    function inbox(string memory initialMessage) public {
        message = initialMessage;
    }

    function setMessage(string memory newMessage) public {
        message = newMessage;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }
}