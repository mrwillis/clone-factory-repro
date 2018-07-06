const DummyFactory = artifacts.require("DummyFactory");


contract("DummyFactory", async () => {
    it("does stuff", async () => {
        let instance = await DummyFactory.deployed();
        let tx = await instance.createDummy("test", 123);
        console.log(tx.receipt.logs);
    })
})