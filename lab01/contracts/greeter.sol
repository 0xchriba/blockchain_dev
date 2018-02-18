pragma solidity ^0.4.19;

contract Greeter {
  string private greeting;

  function Greeter(string statement) public {
    greeting = statement;
  }

  function greet() public view returns (string) {
    return greeting;
  }
}
