contract ERC20 {
    function balanceOf(address _owner) constant returns (uint256 balance);
    function transfer(address _to, uint256 _value) returns (bool success);
    function allowance(address owner, address spender) constant returns (uint256);
    function transferFrom(address from, address to, uint256 value) returns (bool);
    function approve(address spender, uint256 value) returns (bool);

    // Declare Events
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    
    // Maintain total supply
    uint256 public totalSupply;
}