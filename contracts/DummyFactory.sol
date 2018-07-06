pragma solidity 0.4.24;


import "@optionality.io/clone-factory/contracts/CloneFactory.sol";
import "./Dummy.sol";

contract DummyFactory is CloneFactory {
    
  address public libraryAddress;

  constructor(address _libraryAddress) public {
      libraryAddress = _libraryAddress;
  }

  function createDummy(string _name, uint _value) public {
    address clone = createClone(libraryAddress);
    Dummy(clone).init(_name, _value);
  }
}