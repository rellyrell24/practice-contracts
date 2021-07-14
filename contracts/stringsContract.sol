// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract stringsContract {

  function fname(string memory _string, uint _index) public pure returns (bytes1){
    bytes memory stringBytes = bytes(_string);
    return stringBytes[_index];
  }
}
