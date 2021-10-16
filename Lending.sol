pragma solidity 0.6.12;

import "https://github.com/aave/protocol-v2/blob/master/contracts/misc/WETHGateway.sol";

contract test is WETHGateway {
    
    string public test;
    
    function deposit(string _test) public payable {
        depositETH(0xA61ca04DF33B72b235a8A28CfB535bb7A5271B70, msg.sender, 0);
        test = _test;
    }
    
    function withdraw(uint _amount) public {
        withdrawETH(0xA61ca04DF33B72b235a8A28CfB535bb7A5271B70, _amount, msg.sender);
    }
    
}
