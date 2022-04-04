pragma solidity ^0.6.0; 

import "./SimpleStorage.sol"; 

contract SimpleStorageFactory {

    SimpleStorage[] public simpleStorages; 

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage(); 
        simpleStorages.push(simpleStorage); 
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        //Address of contarct retrieved from array
        //ABI  (Application binary) 
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorages[_simpleStorageIndex])); 
        simpleStorage.storeNumber(_simpleStorageNumber); 
    }

    function sfRetrieve(uint256 _indexNumber) public view returns(uint256) {
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorages[_indexNumber])); 
        return simpleStorage.retrieveNumber(); 
    }
}