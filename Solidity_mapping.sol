// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Mapping {
    //mapping address to unit 
    mapping(address => uint) public myMap;

    function get(address _adr) public view returns(uint){
        return myMap[_adr];

    }
    function set(address  _adr,uint _i) public {
        // update the value at this address
        myMap[_adr] = _i;
    }
    function remove(address _adr)public{
        delete myMap[_adr];
    }
}


