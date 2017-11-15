# ICO

Test Project built on Ethereum. Containing TestToken smart contract.

## Installing
This was developed using Node 8.4.0, Truffle 3.4.11.

```
npm install -g truffle
npm install
git clone https://github.com/BorisIdzinskyTF/ICO.git
cd ICO
npm install zeppelin-solidity
truffle compile
```

## Testing

```
truffle test
```

## Composition of the repo
The repo is composed as a Truffle project. The test suite can be found in `test` folder. The contract is in `contracts/TestToken.sol`. The deployment scripts are in the `migrations` folder.

## Built With

* [Truffle](http://truffleframework.com/) - The most popular development framework for Ethereum
* [OpenZeppelin](https://openzeppelin.org/) -  Open framework of reusable and secure smart contracts in the Solidity language.
* [Style Guide](http://solidity.readthedocs.io/en/develop/style-guide.html) - Coding conventions for writing solidity code.
