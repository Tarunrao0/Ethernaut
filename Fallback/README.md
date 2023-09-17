# Fallback 
## Task :

1.Claim ownership of the contract.

2.Reduce its balance to 0

## Solution : 

### Claiming the ownership of the contract :

Since you can exploit the recieve function by just sending it a small amount of ETH and also contributing a small amount therefore satisfying both its conditions you can gain the ownership of the contract

Step 1 : get the contract address 

```shell
contract.address
```

Step 2 : Head over to metamask and send the address some ETH

Step 3 : Contribute to the contract below 0.01 ETH 

```shell
await contract.contribute({value: toWei("0.001")})
```
### Reducing the Balance to 0:

Withdraw the entirety of the contract's balance by calling the withdraw function

```shell
await contract.withdraw()
```