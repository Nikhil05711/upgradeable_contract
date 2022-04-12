const { ethers, upgrades } = require("hardhat");

const PROXY = "0x7c6518133C52bC16680963B1bC34C0D214522d85";

async function main(){
    const BoxV2 = await ethers.getContractFactory("BoxV2");
    await upgrades.upgradeProxy(PROXY, BoxV2);
    console.log("Box upgraded");
}

main();