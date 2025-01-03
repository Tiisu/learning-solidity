// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;
// This is the first smart contract
// contract hello {
//     string public  welcome = 'Hello world';

// }

contract Calculator {

    uint256 result = 5;

    // An addition function
     function add(uint256 num ) public {
        result += num;
     }

     function subtract (uint256 num ) public  {
        result -= num;
     }

     function multipy (uint256 num ) public {
        result *= num;
     }

     function divide(uint256 num) public  {
        result /= num;
     }

    function get() public view returns (uint256) {
        return result;
    }

}