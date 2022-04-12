//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract myTokenUpgradeable is
    Initializable,
    ERC20Upgradeable,
    OwnableUpgradeable
{
    function initialize() external initializer {
        __ERC20_init("Chain", "CHN");
        __Ownable_init();
        _mint(msg.sender, 5000000 * (10**9));
    }

    function transferPrice(uint256 token) public {
        uint256 amount = token * (10**9);
        _transfer(owner(), msg.sender, amount);
    }
}
