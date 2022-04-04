//SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
    
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
}

