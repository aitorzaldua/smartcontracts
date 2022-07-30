const hre = require("hardhat");

const main = async () => {
  const SuperContract = await hre.ethers.getContractFactory();
  const superContract = await SuperContract.deploy();

  await superContract.deployed();

  console.log("SuperContract deployed to:", superContract.address);
};

const runMain = async () => {
  try {
    await main();
    process.exit(1);
  } catch (error) {
    console.error(error);
    process.exit(1);
  }
};

runMain();
