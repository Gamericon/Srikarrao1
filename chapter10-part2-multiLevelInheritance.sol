pragma solidity >=0.4.72 <0.6.0;

contract A {
    string internal x;
    string a = "iNeuron";
    string b = "Token";

    function getA() external {
        x = string(abi.encodePacked(a,b));
    }
}

contract B is A {
    string public y;
    string c = "Divyansh";

    function getB() external payable returns(string memory) {
        y = string(abi.encodePacked(x,c));
    }
} 

contract C is B, A {
    function getC() external view returns(string memory) {
        return y;
    }
}

contract caller {
    C c = new C();

    function testInheritance() public returns(string memory) {
        c.getA();
        c.getB();
        return c.getC();
    }
}