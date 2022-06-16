pragma solidity >=0.4.72 <0.6.0;

contract parent {
    uint internal sum;

    function setValue() external {
        uint a = 10;
        uint b = 20;
        sum = a + b;
    }
}

contract child is parent {
    function getValue() external view returns(uint) {
        return sum;
    }
}

contract caller {
    child c = new child();

    function testInheritance() public returns(uint) {
        c.setValue();
        return c.getValue();
    }
}