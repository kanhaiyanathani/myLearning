// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
    uint[] public values = [2,3,4];
    mapping(uint => string) public names;
    mapping(address => mapping(uint => Book)) public myBooks;

    struct Book{
        string title;
        string author;
    }

    constructor(){
        names[1] = "kanha";
        names[2] = "roshani";
        names[3] = "anshu";
    }

    function addValues(uint _value) public {
        values.push(_value);
    }

    function getCount() public view returns (uint){
        return values.length;
    }

    function addMyBooks(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}
