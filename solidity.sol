// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Assessment1 {
    uint public evenCount;

    function requireevennumber(uint number) external {
        require(number % 2 == 0, "The number you inputted is ODD");
        ++evenCount;
    }

    function assertevennumber(uint number) external {
        assert(number % 2 == 0);
        ++evenCount;
    }

    function revertevennumber(uint number) external {
        if (number % 2 != 0) {
            revert("The number you inputted is ODD");
        }
        ++evenCount;
    }
}
