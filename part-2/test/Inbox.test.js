// contract test code will go here
// GOAL: Make sure the contracts are working in the way we designed them.

const assert = require('assert');
const ganache = require('ganache-cli');
const Web3 = require('web3'); // Capital W means we are the constructor here.
const web3 = new Web3(ganache.provider()); // instantiating the constructor above. attempts to connect to local test network. Different providers will be set for 'production' networks.

class Car {
  park() {
    return 'stopped';
  }

  drive() {
    return 'vroom';
  }
}

describe('Car Class Test', () => {
  let car; // initialize car so it is defined for the it's.
  beforeEach(() => {
    car = new Car(); // define car value for each it within this describe.
  });

  it('should stop when parked', () => {
    assert.equal(car.park(), 'stopped');
  });

  it('can drive', () => {
    assert.equal(car.drive(), 'vroom')
  })
});