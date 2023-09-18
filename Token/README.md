# Task :

You are given 20 tokens to start with and you will beat the level if you somehow manage to get your hands on any additional tokens. Preferably a very large amount of tokens.

# Solution :

Well basically this flaw is in older versions of solidity called overflow, Where if you try to go below 0 or beyond 2^256-1 it just returns to the other point like

0-1 would be 2^256-2

The solution to this was pretty simple

just transfer a large amount of tokens and itll satisfy the condition

```solidity
await contract.transfer("/*address*/", "1000")
```