pragma solidity ^0.6.0;

contract SimpleStorage {
    
    uint256 favoriteNumber;
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        
    }
    
    struct People{
        uint256 favoriteNumber;
        string name;
    }
    
    People[] public people;
    
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
    
        function addPerson(string memory _name, uint256 _favoriteNumber) public {
            people.push(People({favoriteNumber: _favoriteNumber, name:_name}));
        }
}