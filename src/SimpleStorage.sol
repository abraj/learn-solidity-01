// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract SimpleStorage {
  struct Person {
    string name;
    uint256 num;
  }

  uint256 private myNum;
  Person[] public personList;
  mapping(string => uint256) public personMap;

  function store(uint256 _num) public virtual {
    myNum = _num;
  }

  function retrieve() public view returns (uint256) {
    return myNum;
  }

  function addPerson(string calldata _name, uint256 _num) public {
    personList.push(Person(_name, _num));
    personMap[_name] = _num;
  }
}
