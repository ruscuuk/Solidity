//SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

//Blockchain üzerinde depolanırlar
contract  StateVariables{
    uint public myUint= 123;
    function foo() external {
        uint not StateVariable = 456;
    }
}