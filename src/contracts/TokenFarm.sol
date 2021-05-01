pragma solidity >=0.4.21 <0.6.0;

import "./DappToken.sol";
import "./DaiToken.sol";


contract TokenFarm {
    // All code goes here...

    string public name = "Dapp Token Farm";
    DappToken public dappToken;
    DaiToken public daiToken;

    mapping(address =>uint) public stakingBalance;
    mapping(address => bool) public hasStaked;
    constructor(DappToken _dappToken, DaiToken _daiToken) public {
        dappToken = _dappToken;
        daiToken = _daiToken;
    }
    // 1. Stake Tokens (Deposit)
function stakeTokens(uint _amount) public {
    // Code goes inside here ...

    // Transfer Mock Dai Tokens to this contract for staking
    daiToken.transferFrom(msg.sender, address(this), _amount);

}
    // 2. Unstaking Tokens (Withdraw)
    stakingBalance[msg.sender] = stakingBalance[msg.sender] + _amount;
    // 3. Issuing Tokens


}