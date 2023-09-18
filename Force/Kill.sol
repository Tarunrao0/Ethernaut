// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Kill {
  constructor() payable {}

  function killCat(address _forceContract) public {
    selfdestruct(payable (_forceContract));
  }
}