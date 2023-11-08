// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.9;

contract DynamicArrayDeletion {
    uint256[] public dynamicArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

    error IndexOutOfBounds();

    constructor() {}

    function deleteItem(uint256 _index) public {
        //swap item to delete with last item in array
        if (_index >= dynamicArray.length) revert IndexOutOfBounds();
        dynamicArray[_index] = dynamicArray[dynamicArray.length - 1];
        dynamicArray.pop();
    }

    function getArray() public view returns (uint256[] memory) {
        return dynamicArray;
    }
}
