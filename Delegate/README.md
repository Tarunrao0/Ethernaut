# Task :

The goal of this level is for you to claim ownership of the instance you are given

# Solution :

We get to see a few interesting things here,

### 1) Delegate call : 

This is a low level function that is used to call a function from another contract without modifying it and using the values of the current contract

### 2) msg.data :

Since delegate call is low level it requires its function names to be in the form of hashes, usually it takes 0x + 4 bytes 
so to convert our function name to low level we use 

```solidity
web3.eth.abi.encodeFunctionSignature("pwn()")
```
### 3) Fallback :
It runs when a transaction without any parameters is sent to the contract. Sort of a default function youd say

So we send the contract some ETH since 

```solidity
owner = msg.sender;
```

```solidity
await contract.sendTransaction({data: "0xdd365b8b"})
```