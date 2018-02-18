pragma solidity ^0.4.19;

contract Fibonacci {
  uint private first;
  uint private second;

  function Fibonacci() public {
    first = 0;
    second = 1;
  }

  function printFibonacci(uint count) public view returns (uint[]) {
    uint[] memory result = new uint[](count);
    for(uint i = 0; i < count; i++) {
      result[i] = first;
      uint temp = first;
      first = second;
      second = temp + first;
    }
    return result;
  }
}
