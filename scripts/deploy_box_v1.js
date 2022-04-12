const { ethers, upgrades } = require("hardhat");

async function main(){
    const Box = await ethers.getContractFactory("box");

    const box = await upgrades.deployProxy(Box, [42], {
        initializer: "initialize",
    }); 
    await box.deployed();

    console.log("Box deployed to:", box.address);
}
main();