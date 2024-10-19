//SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;


abstract contract NoDelegateCall{
    address private immutable original; //Create a variable 'original whose value cannot be changed once assigned.
    
    constructor(){
        original = address(this); //As soon as the instance of contract is created, assign an original variable the value of that instance address.
    }

    function checkNotDelegateCall() private view{
        require(address(this) == original); //Function to make sure that the code is being executed by this own contract, not different contract. //Delegate call means
        //executing the code of different contract(callee) by some another contract(caller).;
    }


    modifier noDelegateCall() {
        checkNotDelegateCall();
        _;
    }
}