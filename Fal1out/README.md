# FAL1OUT 

## Task :

Claim the ownership of the contract 

## Flaw :

The function Fal1out says 
```
owner = msg.sender
```
So whoever calls that function just automatically gets the ownership

This couldve been fixed by using the onlyOwner modifier on the function

This also an older way of using a function as a constructor by calling it in the beginning

## Solution : 

The solution is really easy. All you gotta do is call the Fal1out function

```
await contract.Fal1out()
```

And then you can check your ownership by 

```
await contract.owner()
```