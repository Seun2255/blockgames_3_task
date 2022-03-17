var PrimalCoin = artifacts.require("PrimalCoin");
var PrimalNFT = artifacts.require("PrimalNFT");

module.exports = function(deployer) {
    deployer.deploy(PrimalCoin);
    deployer.deploy(PrimalNFT);
};