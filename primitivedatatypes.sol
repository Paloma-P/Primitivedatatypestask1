pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
// import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract PrimitiveDataTypes {
    uint public student = 0x0000000000000000000000000000000000000000
    address public owner;
   
    constructor() public{   
        owner=msg.sender;
        }
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }
    mapping(address => student) public studentID;
    struct StudentsDetail {

        uint totalMarks;
        uint percentage;
    }

    StudentsDetail [] public studentsDetails;
    mapping(address=>bool) _isRegistered;
    function register(address  studentID) public onlyOwner {
        require(!_isRegistered[msg.sender],"sender is already registered");
        studentsDetails.push(StudentsDetail(0 , 0));
    
        }

    function getStudentDetails(address studentID) public view returns (uint memory totalmarks , uint memory percentage) {
         StudentsDetail storage studentsDetail = studentsDetails[studentID]; 
        return (studentsDetail.totalMarks, studentsDetail.percentage);
        
    }

 }   
  
