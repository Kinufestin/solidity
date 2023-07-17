# MyToken Smart Contract

This is a simple Ethereum ERC-20 token smart contract called "MyToken" (MTK). The contract is written in Solidity, a widely used programming language for creating smart contracts on the Ethereum blockchain.

## License

This code is licensed under the GNU General Public License v3.0 (GPL-3.0). You can find the full text of the license in the SPDX-License-Identifier comment at the top of the contract.

## Overview

The MyToken smart contract implements a basic ERC-20 token with a few key functionalities:

1. *Token Name and Symbol*: The token is named "MyToken" and has the symbol "MTK".

2. *Total Supply*: The initial total supply of the token is set to 0. Tokens are minted and burned through specific functions.

3. *Balances Mapping*: The contract uses a mapping to keep track of token balances for each address. The balances mapping maps addresses to their corresponding token balances.

## Public Variables

- name: A public variable representing the name of the token, which is set to "MyToken".
- symbol: A public variable representing the symbol of the token, which is set to "MTK".
- totalSupply: A public variable representing the total supply of the token. It is initially set to 0 and increases as new tokens are minted and decreases when tokens are burned.

## Functions

### Minting

The mint function is used to create new tokens and assign them to a specified recipient.

function mint(address recipient, uint256 amount) public {
    require(amount > 0, "Amount must be greater than 0");
    totalSupply += amount;
    balances[recipient] += amount;
}

- recipient: The address to which the newly minted tokens will be assigned.
- amount: The number of tokens to be minted and added to the recipient's balance.

### Burning

The burn function allows token holders to destroy a specific amount of their tokens, reducing the total supply.

function burn(address sender, uint256 amount) public {
    require(amount > 0, "Amount must be greater than 0");
    require(balances[sender] >= amount, "Not enough balance");
    totalSupply -= amount;
    balances[sender] -= amount;
}

- sender: The address of the token holder who wants to burn their tokens.
- amount: The number of tokens to burn from the sender's balance.
