const hre = require("hardhat");

const main = async () => {
  const Owner001 = await hre.ethers.getContractFactory();
  const owner001 = await Owner001.deploy();

  await owner001.deployed();

  console.log("Owner001 deployed to:", owner001.address);
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
