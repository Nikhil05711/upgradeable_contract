//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract box{
    uint256 public value;

    // constructor(uint256 _value){
    //     value = _value;
    // }

    function initialize(uint256 _value)public {
        value = _value;
    }
}