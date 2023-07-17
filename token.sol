// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MyToken {

   //  public variables here
    string public name = "MyToken";
    string public symbol = "MTK";
    uint256 public totalSupply = 0;

    // mapping variable here
    mapping(address => uint256) public balances;

    // mint function
    function mint(address recipient, uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");
        totalSupply += amount;
        balances[recipient] += amount;
    }

    // burn function
    function burn(address sender, uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");
        require(balances[sender] >= amount, "Not enough balance");
        totalSupply -= amount;
        balances[sender] -= amount;
    }
}
