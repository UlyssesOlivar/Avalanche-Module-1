# Assessment1
This assessment tackles the require, assert and the revert in Module 1 of Avalanche in Metacraters. This Solidity contract named Assessment1 is a simple contract that keeps track of the number of even numbers passed to its functions. It provides three functions to accept even numbers and increment the evenCount variable accordingly.

# Getting Started
Remix is an online Solidity IDE that may be used to run this software; to get started, visit the Remix website at https://remix.ethereum.org.

Click the "+" symbol in the left-hand sidebar to start a new file once you are on the Remix website. Save the file as FUNCTIONSANDERRORS.sol, for example, using the.sol extension. The code below should be copied and pasted into the file:

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

# Author
Olivar, Ulysses O. 3.1 BSIT
