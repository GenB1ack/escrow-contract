var ENSBidEscrow = artifacts.require("./ENSBidEscrow.sol");

module.exports = function(deployer) {
  deployer.deploy(ENSBidEscrow);
};
