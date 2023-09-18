# Task :

Claim ownership of the contract below to complete this level.

# Solution :

Let us take an example to see how "tx.origin" and "msg.sender" work

John wants to call changeOwner on the Telephone contract

Then, John becomes the "msg.sender"

Lets say he designed a "contract A" that has a function that calls changeOwner on the Telephone contract

Now who do you think is the msg.sender

The address of contract A becomes the msg.sender

Unlike msg.sender, tx.origin still returns John 

Here we get what we needed to hack the contract

That is tx.origin != msg.sender

```solidity
contract Attack {
  Telephone attack = Telephone (0x4c00718Abb77B5F3d0AF2B7bf7c1D13dB525774D);

  function callChangeOwner() public {
    attack.changeOwner (0x2e5B608ee78362f84835c86579602f200b4e5BB7);
  }
}
```
