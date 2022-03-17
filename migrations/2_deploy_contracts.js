const PrimalCoin = artifacts.require("PrimalCoin");
const PrimalNFT = artifacts.require("PrimalNFT");

module.exports = function(deployer) {
    deployer.deploy(PrimalCoin);
    deployer.deploy(PrimalNFT);
};