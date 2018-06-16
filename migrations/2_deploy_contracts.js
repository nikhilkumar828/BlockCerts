var BlockCerts = artifacts.require("./blockCerts.sol");
module.exports = function(deployer) {
  deployer.deploy(BlockCerts);
};

