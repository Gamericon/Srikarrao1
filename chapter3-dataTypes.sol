pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
    // string - first data type. Then visibility followed by the name of the variable
    string public value = "myValue";

    // constant 
    string public constant value1 = "myValue";

    // booleans
    bool public myBool = true;

    // signed integers - can be both +ve and -ve
    int public myInt = 1;

    // unsigned integers - only +ve numbers
    uint public myUint = 1;

    // can put up specific integer bits - 32 bit by default when no bits specified
    int256 public myInt1 = 999;
    uint256 public myUint1 = 999;

    // enums - data Strucutre which is a way of keeping an enumerated list.
    enum Countries { India, USA, Australia }

    // check the current country
    Countries public country;

    // set the constructor
    constructor() {
        country = Countries.India;
    }

    // change the state 
    function changeCountry() public {
        country = Countries.Australia;
    }

    // check if the state is active
    function isCountryIndia() public view returns(bool) {
        return country == Countries.India;
    }
}