const { ethers, upgrades } = require("hardhat");

async function main(){
    const token = await ethers.getContractFactory("myTokenUpgraded");

    await upgrades.deployProxy(token, {
        initializer: "initialize",
    });

    await token.deployed();

    console.log("Token deployed to:", token.address);
}

main();