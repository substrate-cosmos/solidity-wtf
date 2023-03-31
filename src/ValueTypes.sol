// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// https://wtf.academy/solidity-start/ValueTypes
contract ValueTypes {
    // bool type
    bool public _bool = true;

    // bool operator
    bool public _bool1 = !_bool;  // !
    bool public _bool2 = _bool && _bool1; // &&
    bool public _bool3 = _bool || _bool1; // ||
    bool public _bool4 = _bool == _bool1; // ==
    bool public _bool5 = _bool != _bool1; // != 

    // int 
    int public _int = -1;
    uint public _uint = 1;
    uint256 public _number = 20220330; 

    // int operator
    uint256 public _number1 = _number + 1; // +, -, *, /
    uint256 public _number2 = 2**2; // **
    uint256 public _number3 = 7 % 2; // %
    bool public _numberbool = _number2 > _number3; // compare

    // adress 
    address public _address = 0x7A58c0Be72BE218B41C608b7Fe7C5bB630736C71;
    address payable public _address1 = payable(_address);
    uint256 public balance = _address1.balance; // balanace of address

    // fix length bytes array
    bytes32 public _bytes32 = "MiniSolidity";
    bytes1 public _bytes = _bytes32[0];

    // enum 
    enum ActionSet {
        Buy, //0
        Hold, //1
        Sell //2
    }

    ActionSet action = ActionSet.Buy;

    function enumToUint() external view returns(uint) {
        return uint(action);
    }
}