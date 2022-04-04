//SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract kake {
    
    //initialized to 0 by default
    uint256 private favoriteNumber;

    struct People {
        uint256 favoriteNumber; 
        string name; 
    }

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumbers; 

    function addPeople(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name)); 
        nameToFavoriteNumbers[_name] = _favoriteNumber; 
    }

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber; 
    } 

    function retrieveFavoriteNumber() public view returns(uint256) {
        return favoriteNumber; 
    }
}

