// Dogs.sol
pragma solidity ^0.8.21;

contract Dogs {
  // 犬のインスタンスを作っていきます
  struct Dog {
    uint id;
    string name;
  }

  // mappingはいわゆる連想配列のこと。ここではuint（id）をDogインスタンスに割り当てている。
  mapping(uint => Dog) public dogs; // Dogインスタンスを格納
  uint public dogsCount; // インスタンス作成時のidとして利用（毎インスタンス生成時に+1していく）

  constructor() public { // 初期インスタンス生成
    createProgress("pochi");
  }

  function createProgress(string memory _name) private {
    dogsCount++;
    dogs[dogsCount] = Dog(dogsCount, _name);
  }
}