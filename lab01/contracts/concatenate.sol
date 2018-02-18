pragma solidity ^0.4.19;

contract Concatenate {

    string private one;
    string private two;

  function Concatenate(string _one, string _two) public {
    one = _one;
    two = _two;
  }

  function printConcatenate() public view returns (string) {
    bytes memory first;
    bytes memory second;

    first = bytes(one);
    second = bytes(two);

    string memory stringLen = new string(first.length + second.length);
    bytes memory result = bytes(stringLen);

    uint j = 0;
    for (uint i = 0; i < first.length; i++) result[j++] = first[i];
    for (i = 0; i < second.length; i++) result[j++] = second[i];

    return string(result);
  }
}
