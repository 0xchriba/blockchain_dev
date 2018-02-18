pragma solidity ^0.4.19;

contract Xor {
  uint private a;
  uint private b;

  function Xor(uint _a, uint _b) public {
      a = _a;
      b = _b;
  }
  function printXor() public view returns (bool) {
      return a != b;
  }
}
