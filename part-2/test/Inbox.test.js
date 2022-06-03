// contract test code will go here
// GOAL: Make sure the contracts are working in the way we designed them.

const assert = require('assert');
const ganache = require('ganache-cli');
const Web3 = require('web3'); // Capital W means we are the constructor here.
const web3 = new Web3(ganache.provider()); // instantiating the constructor above. attempts to connect to local test network. Different providers will be set for 'production' networks.
const { interface, bytecode } = require('../compile');

let accounts;
let inbox;
const defaultMessage = 'Hi there!';

beforeEach(async () => {
  // Get a list of all accounts
  accounts = await web3.eth.getAccounts()

  // Use one of those accounts to deploy the contract
  // line 1 below teaches web3 about what methods an Inbox contract has.
  // line 2 tells web3 that we want to deploy a new copy of this contract.
    // arguments = list of args to pass into the constructor function when the contract is created.
  // line 3 tells web3 to send out a transaction that creates the contract.
  inbox = await new web3.eth.Contract(JSON.parse(interface))
    .deploy({ data: bytecode, arguments: [defaultMessage] })
    .send({ from: accounts[0], gas: '1000000' });
});

describe('Inbox', () => {
  it('deploys a contract', () => {
    // assert the value is truthy, not null or undefined, and is a string
    assert.ok(inbox.options.address); // when you console log inbox, options and address are a part of the object. This outputs the address the contract was deployed to.
  });

  // calling a method here, is relatively instant.
  it('has a default message', async () => {
    // in messages (), pass in any required args if any.
    // in call (), 
    const message = await inbox.methods.message().call();
    assert.equal(message, defaultMessage);
  });

  it('can set a message', async () => {
    await inbox.methods.setMessage('foo bar').send({ from: accounts[0] });
    const message = await inbox.methods.message().call();
    assert.equal(message, 'foo bar');
  })
})