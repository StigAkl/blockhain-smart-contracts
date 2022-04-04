//SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
    
    //initialized to 0 by default
    uint256 private favoriteNumber;

    function storeNumber(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber; 
    } 

    function retrieveNumber() public view returns(uint256) {
        return favoriteNumber; 
    }
}

