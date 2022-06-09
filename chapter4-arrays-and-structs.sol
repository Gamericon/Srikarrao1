pragma solidity >=0.7.0 <0.9.0;

contract Mycontract2 {
     
    // c
    // max of 17 different atrtributes of differnet data types.
    struct Employee {
        string _firstName;
        string _lastName;
        uint _id;
    }

    Employee[] public emps; 
    // just continuos storage of data.
    // uint[] public integerArray;

    // mapping -> dictionary in python or hash tables in Java. 
    // store key value pairs
    mapping(uint => Employee) public emp;

    uint i = 0;

    function addNewEmployee(string memory _firstName, string memory _lastName, uint id) public {
        emps.push(Employee(_firstName, _lastName, id));
        emp[i] = Employee(_firstName, _lastName, id);
        i += 1;
    }

    function getEmpAtIndexFromArray(uint index) public view returns(Employee memory) {
        return emps[index];
    }

    function getEmpAtIndexFromMap(uint index) public view returns(Employee memory) {
        return emp[index];
    }
}