// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract mappingContract {
  mapping (string => string) capitals;

  function addCaptital(string memory country, string memory capital) public {
    capitals[country] = capital;
  }

  function getCaptital(string memory _country) public view returns (string memory) {
    return capitals[_country];
  }

  function removeCapital(string memory country) public {
    delete(capitals[country]);
  }
}
