// @ts-ignore
import { ethers } from "hardhat";

async function main() {
  const MaxTokenCount = 1000000;
  const Erc20Token = await ethers.getContractFactory("ERC20");
  const erc20Token = await Erc20Token.deploy(MaxTokenCount);

  await erc20Token.deployed();

  console.log(`Token Contract Deployed.`);
  console.log(`contract id : ${erc20Token.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
