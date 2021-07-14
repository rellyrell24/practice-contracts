// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract modifiers {
  uint32 public min_bid = 100;
  modifier minBet {
    if(msg.value >= min_bid){
      _;
    } else {
      revert();
    }
  }

  function bid() payable public minBet returns(bool){
    return true;
  }
}
