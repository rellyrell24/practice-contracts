const modifiers = artifacts.require("modifiers");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("modifiers", function (/* accounts */) {
  it("should have minimum bet greater than 100 wei", async function () {
    modifiers.deployed()
      .then(instance => {
        assert.equal(instance.bid.call(), true)
      });
  });
});
