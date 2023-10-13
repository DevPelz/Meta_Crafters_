// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract MyToken {

    // public variables here
    string public TokenName = "PELZ TOKEN";
    string public TokenAbbrv = "PLT";
    uint public TotalSupply;

    // mapping variable here
    mapping (address => uint) public balances;

    // mint function

    function mint(address _minter, uint _value) public {
        TotalSupply += _value;
        balances[_minter] += _value;
    }

    // burn function

    function burn(address _burner, uint _value) public {
        if (balances[_burner] < _value){
        revert ("_burner can't burn less than balance");
        }

        TotalSupply -= _value;
        balances[_burner] -= _value;
    }

}
