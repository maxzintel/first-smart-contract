// contract test code will go here
// GOAL: Make sure the contracts are working in the way we designed them.

const assert = require('assert');
const ganache = require('ganache-cli');
const Web3 = require('web3'); // Capital W means we are the constructor here.
const web3 = new Web3(ganache.provider()); // instantiating the constructor above. attempts to connect to local test network. Different providers will be set for 'production' networks.
let accounts;
beforeEach(async () => {
  // Get a list of all accounts
  accounts = await web3.eth.getAccounts()

  // Use one of those accounts to deploy the contract
});

describe('Inbox', () => {
  it('deploys a contract', () => {});
})