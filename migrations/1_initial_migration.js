var Migrations = artifacts.require("./Migrations.sol");
var Dummy = artifacts.require("./Dummy.sol");
var DummyFactory = artifacts.require("./DummyFactory.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(Dummy).then(() => deployer.deploy(DummyFactory, Dummy.address));
};
