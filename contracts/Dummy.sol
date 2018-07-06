pragma solidity 0.4.24;

contract Dummy {

    string name;
    uint value;
    address owner;

    event TestEvent(address addy);

    constructor() public {
        owner = msg.sender;
    }

    function init(string _name, uint _value) public {
        name = _name;
        value = _value;
        emit TestEvent(owner);
    }
}