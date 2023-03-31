// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// https://wtf.academy/solidity-start/Function
contract FunctionType {
    // string public _string = "Hello World!";

    uint256 public number = 5;

    // error
    // function add() pure external {
    //     number = number + 1;
    // }
    //     Compiler run failed
    // error[8961]: TypeError: Function cannot be declared as pure because this expression (potentially) modifies the state.
    //   --> src/FunctionType.sol:11:9:
    //    |
    // 11 |         number = number + 1;
    //    |         ^^^^^^



    // error[2527]: TypeError: Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
    //   --> src/FunctionType.sol:11:18:
    //    |
    // 11 |         number = number + 1;
    //    |                  ^^^^^^

    function add() external {
        number += 1;
    }

    // pure function
    function addPure(uint256 _number) external pure returns(uint256 new_number){
        new_number = _number + 1;
    }

    // view function
    function addView() external view returns(uint256 new_number) {
        new_number = number + 1;
    }

    // view function
    function numberView() external view returns(uint256) {
        return number;
    }

    function minus() internal {
        number -= 1;
    }

    // 
    function minusCall() external {
        minus();
    }

    function minusPayable() external payable returns(uint256 balance) {
        minus();
        balance = address(this).balance;
    }
}