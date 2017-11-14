pragma solidity ^0.4.4;

import "../token/StandardToken.sol";

/**
 * @title TestToken
 * @dev Burnable(can be irreversibly destroyed) ERC20 Token, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `StandardToken` functions.
 */
contract TestToken is StandardToken {

	string public constant name = "TestToken";
	string public constant symbol = "TST";
	uint8 public constant decimals = 18;
	uint256 public constant INITIAL_SUPPLY = 50000000;

	address public owner;

	event Burn(address indexed burner, uint256 value);

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  function TestToken() {
  	totalSupply = INITIAL_SUPPLY;
  	owner = msg.sender
    balances[owner] = INITIAL_SUPPLY;
  }

  /**
   * @dev Throws if called by any account other than the owner.
   */
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  /**
   * @dev Burns a specific amount of tokens.
   * @param _value The amount of token to be burned.
   */
  function burn(uint256 value) public onlyOwner {
    require(value > 0);
    require(value <= balances[msg.sender]);
    // no need to require value <= totalSupply, since that would imply the
    // sender's balance is greater than the totalSupply, which *should* be an assertion failure

    address burner = msg.sender;
    balances[burner] = balances[burner].sub(_value);
    totalSupply = totalSupply.sub(_value);
    Burn(burner, value);
    }

}