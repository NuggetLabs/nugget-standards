// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

interface IFunding {
    function fund(address _tokenA, address _tokenB, uint _amountA, uint _amountB) external payable; 
    // function init([arbitrary parameters]) external;
}