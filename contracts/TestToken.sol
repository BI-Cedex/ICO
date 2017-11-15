pragma solidity ^0.4.4;

import "/home/administrator/TruffleProjects/node_modules/zeppelin-solidity/contracts/token/BurnableToken.sol";

/**
 * @title TestToken
 * @dev Burnable, which can be irreversibly destroyed, ERC20 Token, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `StandardToken` functions.
 */
contract TestToken is BurnableToken {

	string public constant name = "TestToken";
	string public constant symbol = "TST";
	uint8 public constant decimals = 18;
	uint256 public constant INITIAL_SUPPLY = 50000000;

	address public owner;

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  function TestToken() {
  	totalSupply = INITIAL_SUPPLY;
  	owner = msg.sender;
    balances[owner] = INITIAL_SUPPLY;
  }

  /**
   * @dev Throws if called by any account other than the owner.
   */
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  function burn(uint256 value) public onlyOwner {
    //Call BurnableToken.burn(value);
    super.burn(value);
  }

}