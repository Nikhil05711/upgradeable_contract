//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract myToken is ERC20, Ownable {
    constructor() ERC20("Chain", "CHN") {
        _mint(msg.sender, 10000000 * (10**9));
    }

    function transferPrice(uint256 token) public {
        uint256 amount = token * (10**9);
        _transfer(owner(), msg.sender, amount);
    }
}
